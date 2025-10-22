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
  }

  type view = Front(front) | Back(back)

  let back = (saveProgress, card, options: array<questionOption>, set: view => unit) => {
    let options = options->Array.map(option => {
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
    set(
      Back({
        content: card.Card.content,
        options,
        solution: card.Card.solution,
        evaluate: saveProgress,
      }),
    )
  }
  let front = (saveProgress, card) => (set: view => unit) => {
    switch card.Tilia.value {
    | None => Js.Exn.raiseError(`No card selected`)
    | Some(card) =>
      let options = Tilia.tilia(
        card.Card.options->Array.map(option => {
          id: option.id,
          content: option.content,
          correct: option.correct,
          checked: false,
        }),
      )

      Front({
        content: card.content,
        options,
        turn: () => back(saveProgress, card, options, set),
      })
    }
  }
}

type t = {view: Ui.view}

let sort = (cards: array<(Card.t, CardProgress.t)>): array<(Card.t, CardProgress.t)> => {
  cards->Array.toSorted(((_, a), (_, b)) => {
    let aProgress = a.recall
    let bProgress = b.recall
    aProgress < bProgress ? -1.0 : 1.0
  })
}

let nextRecall = (stacks: array<rstack>, ~max=20, ~now=Date.now()) => {
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
  let seenCards = seenCards->sort

  let afterIdx = seenCards->Array.findIndex(((_, {recall})) => recall > now)
  let toRecall =
    seenCards
    ->Array.slice(~start=0, ~end=afterIdx)
    ->Array.map(((card, _)) => card)
    ->Array.concat(newCards)
    ->Array.slice(~start=0, ~end=max)
  toRecall->Array.shuffle
  toRecall
}

let make = (repo: RepositoryType.t, stacks: array<rstack>): t => {
  open Tilia

  let recall = nextRecall(stacks)

  let (cardIdx, setCardIdx) = signal(0)
  let card = derived(() => recall[cardIdx.value])
  let nextCard = () => {
    let idx = cardIdx.value + 1
    if idx < recall->Array.length {
      setCardIdx(idx)
    }
  }

  let prog = Dict.fromArray(stacks->Array.map(({prog}) => (prog.id, prog)))

  let saveProgress = (state: CardProgress.state) => {
    switch card.value {
    | None => Js.Exn.raiseError(`No card selected`)
    | Some(card) =>
      switch prog->Dict.get(card.Card.stackId) {
      | None => Js.Exn.raiseError(`No progress found for card ${card.stackId}`)
      | Some(p) => {
          p.cards->Dict.set(card.id, CardProgress.next(p.cards->Dict.get(card.id), state))
          ignore(repo.progress.save(p))
        }
      }
    }
    nextCard()
  }

  tilia({
    view: store(Ui.front(saveProgress, card)),
  })
}
