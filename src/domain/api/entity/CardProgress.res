type state = Again | Hard | Good | Easy(int)

let again = 0.
let hard = 1. *. 3600. *. 24.
let good = 3. *. 3600. *. 24.
let easy = 6. *. 3600. *. 24.

type t = {
  timestamp: float, // Last seen ms since epoch
  recall: float, // Recall time ms since epoch
  state: state, // Last evaluation
}

let recallTime = (timestamp, s) =>
  switch s {
  | Again => timestamp +. again
  | Hard => timestamp +. hard
  | Good => timestamp +. good
  | Easy(i) => timestamp +. easy *. i->Int.toFloat->Math.pow(~exp=2.)
  }

// Mark evaluation as easy
let easyState = prevState =>
  switch prevState {
  | Easy(i) => Easy(i + 1)
  | _ => Easy(1)
  }

let ofString = s =>
  switch s {
  | "Again" => Again
  | "Hard" => Hard
  | "Good" => Good
  | s if s->String.startsWith("Easy:") =>
    switch Int.fromString(s->String.sliceToEnd(~start=5)) {
    | None => Easy(1)
    | Some(i) => Easy(i)
    }
  | _ => raise(Invalid_argument(`'${s}' is not a valid state`))
  }
