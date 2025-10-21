type stackType =
  | @as("cards") Cards
  | @as("quiz") Quiz

type level =
  | @as("regular") Regular
  | @as("pro") Pro

type info = {
  id: string,
  title: string,
  kind: stackType,
  level: level,
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
  cards: dict<CardProgress.t>,
}

let infoSchema = S.object(s => {
  id: s.field("id", S.string),
  title: s.field("title", S.string),
  kind: s.field("type", S.union([S.literal(Cards), S.literal(Quiz)])),
  level: s.field("level", S.union([S.literal(Regular), S.literal(Pro)])),
  chapter: s.field("chapter", S.string),
  course: s.field("course", S.string),
  tags: s.field("tags", S.array(S.string)),
})

let progressSchema = S.object(s => {
  id: s.field("id", S.string),
  active: s.field("active", S.bool),
  cards: s.field("cards", S.dict(CardProgress.progressSchema)),
})
