type t = {
  toc: RecallToc.t,
  recall: option<Recall.t>,
  start: unit => unit,
  done: unit => unit,
  settings: Settings.t,
}

let repo = Repository.make("/stacks")

module Window = {
  type location = {pathname: string}
  @val external location: location = "window.location"
}

let make = () => {
  open Tilia
  let (recall, setRecall) = signal(None)

  carve(({derived}) => {
    toc: RecallToc.make(repo, Window.location.pathname),
    recall: lift(recall),
    start: derived(({toc}) => {
      () => ignore(toc.start(setRecall))
    }),
    done: () => setRecall(None),
    settings: Settings.make(repo),
  })
}

let app = make()
