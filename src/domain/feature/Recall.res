module Ui = {
  type questionOption = {
    id: string,
    text: string,
    mutable checked: bool,
  }

  type correctedOption = {
    id: string,
    text: string,
    checked: bool,
    correct: bool,
  }

  type toc = {
    stacks: array<(Stack.info, option<Stack.progress>)>,
    setActive: string => unit,
  }

  type front = {
    content: string,
    options: option<array<questionOption>>,
    turn: unit => unit,
  }

  type back = {
    content: string,
    options: option<array<correctedOption>>,
    again: unit => unit,
    hard: unit => unit,
    good: unit => unit,
    easy: unit => unit,
  }

  type view = Front(front) | Back(back)
}

type t = {view: Ui.view}

let make = (_: RepositoryType.t): t => {
  let view: Ui.view = Ui.Front({
    content: "",
    options: None,
    turn: () => (),
  })
  {view: view}
}

let sort = (cards: array<(Card.t, CardProgress.t)>): array<(Card.t, CardProgress.t)> => {
  cards->Array.toSorted(((_, a), (_, b)) => {
    let aProgress = a.timestamp
    let bProgress = b.timestamp
    aProgress < bProgress ? -1.0 : 1.0
  })
}
