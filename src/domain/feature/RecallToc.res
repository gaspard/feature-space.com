type sprog = Loading | NotStarted | Started(Stack.progress)

type t = {
  stacks: array<(Stack.info, sprog)>,
  setActive: (string, bool) => unit,
}

let loadProgress = async (prog: RepositoryType.progress, set, info: Stack.info) => {
  switch await prog.get(info.id) {
  | None => set((info, NotStarted))
  | Some(p) => set((info, Started(p)))
  }
}

let stacks = async (repo: RepositoryType.t, setList) => {
  let list = (await repo.stack.toc())->Array.map(info => (info, Loading))
  // Early toc display
  setList(list)
  let set = (idx, value) => list[idx] = value
  list->Array.forEachWithIndex(((info, _), i) => {
    // Async load of progress
    ignore(loadProgress(repo.progress, set(i, ...), info))
  })
}

let setActive = (
  {save}: RepositoryType.progress,
  list: Tilia.signal<array<(Stack.info, sprog)>>,
) => (id, active) => {
  switch list.value->Array.findIndex(((v, _)) => v.id == id) {
  | -1 => () // Not found: ignore for now
  | i =>
    switch list.value[i] {
    | Some((_, Started(p))) => {
        p.active = active
        ignore(save(p))
      }
    | Some((info, NotStarted)) => {
        let p: Stack.progress = {
          id: info.id,
          active,
          cards: Map.make(),
        }
        list.value[i] = (info, Started(p))
        ignore(save(p))
      }
    | Some((_, Loading)) => () // Ignore for now
    | None => () // Unreachable
    }
  }
}

let make = (repo: RepositoryType.t): t => {
  open Tilia

  let (list, set) = signal([])
  ignore(stacks(repo, set))

  tilia({
    stacks: lift(list),
    setActive: setActive(repo.progress, list),
  })
}
