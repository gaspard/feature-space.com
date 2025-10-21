type stack = {
  toc: unit => promise<array<Stack.info>>,
  get: string => promise<Stack.t>,
}

type progress = {
  get: string => promise<option<Stack.progress>>,
  save: Stack.progress => promise<unit>,
}

type t = {
  stack: stack,
  progress: progress,
}
