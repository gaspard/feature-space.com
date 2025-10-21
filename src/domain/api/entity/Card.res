type card = {
  id: string,
  content: string,
  solution: string,
}

type option = {
  id: string,
  text: string,
  correct: bool,
}

type question = {
  id: string,
  content: string,
  solution: string,
  options: array<option>,
}

type t = Card(card) | Question(question)
