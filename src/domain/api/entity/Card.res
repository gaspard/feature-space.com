type qoption = {
  id: string,
  content: string,
  correct: bool,
}

type t = {
  id: string,
  stackId: string,
  content: string,
  solution: string,
  options: array<qoption>,
}

let qoptionSchema = S.object(s => {
  id: s.field("id", S.string),
  content: s.field("content", S.string),
  correct: s.field("correct", S.bool),
})

let cardSchema = S.object(s => {
  id: s.field("id", S.string),
  stackId: s.field("stackId", S.string),
  content: s.field("content", S.string),
  solution: s.field("solution", S.string),
  options: s.field("options", S.array(qoptionSchema)),
})
