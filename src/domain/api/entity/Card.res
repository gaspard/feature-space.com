type qoption = {
  id: string,
  text: string,
  correct: bool,
}

type t = {
  id: string,
  stackId: string,
  content: string,
  solution: string,
  options: array<qoption>,
}
