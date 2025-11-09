type t = {
  fontSize: float,
  increaseFontSize: unit => unit,
  decreaseFontSize: unit => unit,
}

let clamp = (value: float, min: float, max: float) => {
  if value < min {
    min
  } else if value > max {
    max
  } else {
    value
  }
}

let make = (repo: RepositoryType.t): t => {
  open Tilia

  let defaultFontSize = 18.0
  let minFontSize = 10.0
  let maxFontSize = 32.0
  let stepSize = 1.0

  let fontSize =
    repo.settings.get("fontSize")
    ->Nullable.getOr(defaultFontSize->Float.toString)
    ->Float.fromString
    ->Option.getOr(defaultFontSize)
    ->clamp(minFontSize, maxFontSize)

  let (fontSizeH, setFontSizeH) = signal(fontSize)

  let increaseFontSize = () => {
    let newSize = clamp(fontSizeH.value +. stepSize, minFontSize, maxFontSize)
    repo.settings.save("fontSize", newSize->Float.toString)
    setFontSizeH(newSize)
  }

  let decreaseFontSize = () => {
    let newSize = clamp(fontSizeH.value -. stepSize, minFontSize, maxFontSize)
    repo.settings.save("fontSize", newSize->Float.toString)
    setFontSizeH(newSize)
  }

  carve(({derived: _}) => {
    fontSize: lift(fontSizeH),
    increaseFontSize,
    decreaseFontSize,
  })
}
