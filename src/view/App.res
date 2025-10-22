type t = {toc: RecallToc.t}

let repo = Repository.make("/stacks")

module Window = {
  type location = {pathname: string}
  @val external location: location = "window.location"
}

let app = {
  toc: RecallToc.make(repo, Window.location.pathname),
}
