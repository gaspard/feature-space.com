type sprog = Loading | NotStarted | Started(Stack.progress)

type tstack = {
  info: Stack.info,
  prog: sprog,
}

type t = {
  stacks: array<tstack>,
  setActive: (string, bool) => unit,
  start: (option<Recall.t> => unit) => promise<unit>,
}

let start = (repo: RepositoryType.t) => ({stacks}) => {
  async setRecall => {
    let stacks = (
      await Promise.all(
        stacks->Array.map(async ({info, prog}) => {
          switch prog {
          | Started(prog) if prog.active =>
            switch await repo.stack.get(info.id) {
            | None => {
                Js.log2("Stack not found: ", info.id)
                None
              }
            | Some(stack) => Some({Recall.stack, prog})
            }
          | _ => None
          }
        }),
      )
    )->Array.keepSome

    setRecall(Some(Recall.make(repo, stacks)))
  }
}

let loadProgress = async (prog: RepositoryType.progress, set, info: Stack.info) => {
  switch await prog.get(info.id) {
  | None => set({info, prog: NotStarted})
  | Some(p) => set({info, prog: Started(p)})
  }
}

let stacks = (repo: RepositoryType.t, path: string) => {
  async setList => {
    let list = (await repo.stack.toc(path))->Array.map(info => {info, prog: Loading})
    // Early toc display
    setList(list)
    let set = (idx, value) => list[idx] = value
    list->Array.forEachWithIndex(({info}, i) => {
      // Async load of progress
      ignore(loadProgress(repo.progress, set(i, ...), info))
    })
  }
}

let setActive = ({save}: RepositoryType.progress) => ({stacks}) => (id, active) => {
  switch stacks->Array.findIndex(v => v.info.id == id) {
  | -1 => () // Not found: ignore for now
  | i =>
    switch stacks[i] {
    | Some({prog: Started(p)}) => {
        p.active = active
        ignore(save(p))
      }
    | Some({info, prog: NotStarted}) => {
        let p: Stack.progress = {
          id: info.id,
          active,
          cards: Dict.make(),
        }
        stacks[i] = {info, prog: Started(p)}
        ignore(save(p))
      }
    | Some({prog: Loading}) => () // Ignore for now
    | None => () // Unreachable
    }
  }
}

let make = (repo: RepositoryType.t, path: string): t => {
  open Tilia

  carve(({derived}) => {
    stacks: source(stacks(repo, path), []),
    setActive: derived(setActive(repo.progress)),
    start: derived(start(repo)),
  })
}
