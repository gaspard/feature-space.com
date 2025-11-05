type stackType =
  | @as("cards") Cards
  | @as("quiz") Quiz
  | @as("proofs") Proofs

let stackTypeToString = (stackType: stackType) => {
  switch stackType {
  | Cards => "Cards"
  | Quiz => "Quiz"
  | Proofs => "Proofs"
  }
}

let stackTypeToEmoji = (stackType: stackType) => {
  switch stackType {
  | Cards => "📚"
  | Quiz => "✅"
  | Proofs => "👁️"
  }
}

type level =
  | @as("regular") Regular
  | @as("pro") Pro

let levelToString = (level: level) => {
  switch level {
  | Regular => "Regular"
  | Pro => "Pro"
  }
}

type info = {
  id: string,
  title: string,
  kind: stackType,
  level: level,
  chapter: string,
  course: string,
  tags: array<string>,
  count: option<int>,
}

type t = {
  info: info,
  cards: array<Card.t>,
}

type progress = {
  id: string, // Stack id
  mutable active: bool,
  cards: dict<CardProgress.t>,
}

let stackTypeSchema = S.union([S.literal(Cards), S.literal(Quiz), S.literal(Proofs)])
let levelSchema = S.union([S.literal(Regular), S.literal(Pro)])

let infoSchema = S.object(s => {
  id: s.field("id", S.string),
  title: s.field("title", S.string),
  kind: s.field("type", stackTypeSchema),
  level: s.field("level", levelSchema),
  chapter: s.field("chapter", S.string),
  course: s.field("course", S.string),
  tags: s.field("tags", S.array(S.string)),
  count: s.field("count", S.option(S.int)),
})

let progressSchema = S.object(s => {
  id: s.field("id", S.string),
  active: s.field("active", S.bool),
  cards: s.field("cards", S.dict(CardProgress.progressSchema)),
})

let stackSchema = S.object(s => {
  info: s.field("info", infoSchema),
  cards: s.field("cards", S.array(Card.cardSchema)),
})

let tocSchema = S.array(infoSchema)
