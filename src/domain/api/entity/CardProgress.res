@tag("kind")
type state =
  | @as("again") Again
  | @as("hard") Hard
  | @as("good") Good
  | @as("easy") Easy(int)

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

let next = (prev, state) => {
  let state = switch (prev, state) {
  | (Some({state: Easy(i)}), Easy(_)) => Easy(i + 1)
  | (_, Easy(_)) => Easy(1)
  | _ => state
  }
  let timestamp = Date.now()
  {timestamp, recall: recallTime(timestamp, state), state}
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

let easySchema = S.schema(s => Easy(s.matches(S.int)))

let progressSchema = S.object(s => {
  timestamp: s.field("timestamp", S.float),
  recall: s.field("recall", S.float),
  state: s.field(
    "state",
    S.union([S.literal(Again), S.literal(Hard), S.literal(Good), easySchema]),
  ),
})
