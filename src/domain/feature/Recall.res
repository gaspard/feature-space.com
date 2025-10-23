type rstack = {
  stack: Stack.t,
  prog: Stack.progress,
}

module Ui = {
  type questionOption = {
    id: string,
    content: string,
    correct: bool,
    mutable checked: bool,
  }

  type correction = Correct | Missed | Incorrect | Blank

  type correctedOption = {
    id: string,
    content: string,
    checked: bool,
    correction: correction,
  }

  type front = {
    content: string,
    options: array<questionOption>,
    turn: unit => unit,
  }

  type back = {
    content: string,
    solution: string,
    options: array<correctedOption>,
    evaluate: CardProgress.state => unit,
    turn: unit => unit,
  }

  type view = Front(front) | Back(back) | Done

  let back = (evaluate, card, boptions: array<questionOption>, setShowBack: bool => unit) => {
    let options = boptions->Array.map(option => {
      let correction = switch (option.checked, option.correct) {
      | (true, true) => Correct
      | (true, false) => Incorrect
      | (false, true) => Missed
      | (false, false) => Blank
      }
      {
        id: option.id,
        content: option.content,
        checked: option.checked,
        correction,
      }
    })
    Back({
      content: card.Card.content,
      options,
      solution: card.Card.solution,
      evaluate,
      turn: () => setShowBack(false),
    })
  }
}

type stats = {
  total: int,
  seen: int,
  new: int,
  toRecall: int,
  stackCount: int,
}

// Maybe we should move "view" into some other module.
// This should handle the logic of the recall, not the UI.
type t = {
  card: option<Card.t>,
  evaluate: CardProgress.state => unit,
  view: Ui.view,
  stack: array<Card.t>,
  stats: stats,
}

let sort = (cards: array<(Card.t, CardProgress.t)>, ~dayLength=3600. *. 24.): array<(
  Card.t,
  CardProgress.t,
)> => {
  cards->Array.toSorted(((_, a), (_, b)) => {
    let aProgress = CardProgress.recallTime(a.timestamp, a.state, ~dayLength)
    let bProgress = CardProgress.recallTime(b.timestamp, b.state, ~dayLength)
    aProgress < bProgress ? -1.0 : aProgress === bProgress ? 0.0 : 1.0
  })
}

let toRecall = (stacks: array<rstack>, ~now=Date.now(), ~dayLength=3600. *. 24.) => {
  let newCards = []
  let seenCards = []
  stacks->Array.forEach(({stack, prog}) => {
    stack.cards->Array.forEach(card => {
      switch prog.cards->Dict.get(card.id) {
      | None => newCards->Array.push(card)
      | Some(progress) => seenCards->Array.push((card, progress))
      }
    })
  })
  let seenCards = seenCards->sort(~dayLength)

  let afterIdx =
    seenCards->Array.findIndex(((_, {timestamp, state})) =>
      CardProgress.recallTime(timestamp, state, ~dayLength) > now
    )
  seenCards
  ->Array.slice(~start=0, ~end=afterIdx) // If cards to review > max, no new cards will ever be seen...
  ->Array.map(((card, _)) => card)
  ->Array.concat(newCards)
}

let nextRecall = (
  stacks: array<rstack>,
  ~shuffle=Array.shuffle,
  ~now=Date.now(),
  ~max=20,
  ~dayLength=3600. *. 24.,
) => {
  let toRecall = toRecall(stacks, ~now, ~dayLength)->Array.slice(~start=0, ~end=max)
  toRecall->shuffle
  toRecall
}

let make = (
  repo: RepositoryType.t,
  stacks: array<rstack>,
  ~shuffle=Array.shuffle,
  ~now=Date.now(),
  ~max=20,
  ~dayLength=3600. *. 24.,
): t => {
  open Tilia
  let stacks = tilia(stacks)

  let (stack, _setStack) = signal(nextRecall(stacks, ~shuffle, ~now, ~max, ~dayLength))

  let card = derived(() => stack.value[0])
  let advance = eval => {
    switch stack.value->Array.shift {
    | None => ()
    | Some(card) =>
      if eval == CardProgress.Again {
        stack.value->Array.push(card)
      }
    }
  }

  let prog = Dict.fromArray(stacks->Array.map(({prog}) => (prog.id, prog)))

  let evaluate = (state: CardProgress.state) => {
    switch card.value {
    | None => Js.Exn.raiseError(`No card selected`)
    | Some(card) =>
      switch prog->Dict.get(card.Card.stackId) {
      | None => Js.Exn.raiseError(`No progress found for card ${card.stackId}`)
      | Some(p) => {
          let c = CardProgress.next(p.cards->Dict.get(card.id), state, ~now)
          p.cards->Dict.set(card.id, c)
          ignore(repo.progress.save(p))
          advance(state)
        }
      }
    }
  }

  // FIXME: This is not efficient, we should compute the stats once and then update them when the cards change.
  let stats = derived(() => {
    let total = Array.reduce(stacks, 0, (acc, {stack}: rstack) => acc + stack.cards->Array.length)
    let seen = Array.reduce(stacks, 0, (acc, {prog}: rstack) =>
      acc + prog.cards->Dict.valuesToArray->Array.length
    )

    {
      total,
      seen,
      new: total - seen,
      toRecall: toRecall(stacks, ~now, ~dayLength)->Array.length,
      stackCount: stack.value->Array.length,
    }
  })

  let (showBack, setShowBack) = signal(false)

  let options = derived(() => {
    switch card.Tilia.value {
    | None => []
    | Some(card) =>
      card.Card.options->Array.map(option => {
        let opt: Ui.questionOption = {
          id: option.id,
          content: option.content,
          correct: option.correct,
          checked: false,
        }
        opt
      })
    }
  })

  let view = derived(() => {
    switch card.value {
    | None => Ui.Done
    | Some(card) =>
      switch showBack.value {
      | true => Ui.back(evaluate, card, options.value, setShowBack)
      | false =>
        Front({
          content: card.content,
          options: options.value,
          turn: () => setShowBack(true),
        })
      }
    }
  })

  tilia({
    card: lift(card),
    stack: lift(stack),
    evaluate,
    view: lift(view),
    stats: lift(stats),
  })
}
