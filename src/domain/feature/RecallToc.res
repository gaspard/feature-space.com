type sprog = Loading | NotStarted | Started(Stack.progress)

type tstack = {
  info: Stack.info,
  prog: sprog,
}

type stats = {
  toRecall: int,
  seen: int,
  new: int,
  total: int,
}

type t = {
  stacks: array<tstack>,
  setActive: (tstack, bool) => unit,
  toggle: array<tstack> => unit,
  start: (option<Recall.t> => unit) => promise<unit>,
  setDayLength: float => unit,
  setMaxCards: int => unit,
  dayLengthH: float,
  maxCards: int,
  stats: stats,
}

@inline
let isActive = ({prog}: tstack) =>
  switch prog {
  | Started(p) => p.active
  | _ => false
  }

let stats = (~now) => ({stacks, dayLengthH}: t) => {
  let stacks = stacks->Array.filter(isActive)
  let total = Array.reduce(stacks, 0, (acc, elem: tstack) =>
    acc +
    switch elem {
    | {info, prog: Started(p)} if p.active => info.count->Option.getOr(0)
    | _ => 0
    }
  )
  let progs =
    stacks
    ->Array.map(({prog}) =>
      switch prog {
      | Started(p) => Some(p)
      | _ => None
      }
    )
    ->Array.keepSome

  let seen = Array.reduce(progs, 0, (acc, prog) =>
    acc + prog.cards->Dict.valuesToArray->Array.length
  )
  {
    total,
    seen,
    new: total - seen,
    toRecall: Recall.recallCount(progs, ~now=now(), ~dayLength=dayLengthH *. 3600. *. 1000.),
  }
}

let start = (repo: RepositoryType.t) => ({stacks, dayLengthH, maxCards}) => {
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

    setRecall(
      Some(Recall.make(repo, stacks, ~dayLength=dayLengthH *. 3600. *. 1000., ~max=maxCards)),
    )
  }
}

let loadProgress = async (prog: RepositoryType.progress, set, info: Stack.info) => {
  switch await prog.get(info.id) {
  | None => set({info, prog: NotStarted})
  | Some(p) => set({info, prog: Started(p)})
  }
}

let stacks = (repo: RepositoryType.t, path: string) => {
  async (_prev, setList) => {
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

let setActive = ({save}: RepositoryType.progress) => ({stacks}: t) => (stack, active) => {
  switch stacks->Array.findIndex(v => v.info.id == stack.info.id) {
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

let toggle = (state: t) => (stacks: array<tstack>) => {
  let count = stacks->Array.reduce(0, (acc, stack) => {
    switch stack.prog {
    | Started(p) if p.active => acc + 1
    | _ => acc
    }
  })
  let active = count !== stacks->Array.length
  stacks->Array.forEach(stack => state.setActive(stack, active))
}

let make = (repo: RepositoryType.t, path: string): t => {
  open Tilia

  let day =
    repo.settings.get("dayLength")
    ->Nullable.getOr("24")
    ->Float.fromString
    ->Option.getOr(24.)
  let maxCards =
    repo.settings.get("maxCards")
    ->Nullable.getOr("20")
    ->Int.fromString
    ->Option.getOr(20)
  let (dayLengthH, setDayLengthH) = signal(day)
  let (maxCards, setMaxCards) = signal(maxCards)
  let setDayLength = (value: float) => {
    repo.settings.save("dayLength", value->Float.toString)
    setDayLengthH(value)
  }
  let setMaxCards = (value: int) => {
    repo.settings.save("maxCards", value->Int.toString)
    setMaxCards(value)
  }

  carve(({derived}) => {
    stacks: source([], stacks(repo, path)),
    setActive: derived(setActive(repo.progress)),
    toggle: derived(toggle),
    start: derived(start(repo)),
    setDayLength,
    setMaxCards,
    dayLengthH: lift(dayLengthH),
    maxCards: lift(maxCards),
    stats: derived(stats(~now=Date.now)),
  })
}
