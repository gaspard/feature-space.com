type info = {
  id: string,
  level: string,
  chapter: string,
  course: string,
  tags: array<string>,
}

type t = {
  info: info,
  cards: array<Card.t>,
}

type progress = {
  id: string,
  mutable active: bool,
  cards: Map.t<string, CardProgress.t>,
}
