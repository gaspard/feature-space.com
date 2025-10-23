type stack = {
  toc: string => promise<array<Stack.info>>,
  get: string => promise<option<Stack.t>>,
}

type progress = {
  get: string => promise<option<Stack.progress>>,
  save: Stack.progress => promise<unit>,
}

type settings = {
  get: string => nullable<string>,
  save: (string, string) => unit,
}

type t = {
  stack: stack,
  progress: progress,
  settings: settings,
}
