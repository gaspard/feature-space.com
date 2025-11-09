open TiliaReact

let setCSSProperty = (name: string, value: string) => {
  ignore((name, value))
  ignore(%raw(`document.documentElement.style.setProperty(arguments[0], arguments[1])`))
}

@react.component @genType
let make = () => {
  useTilia()
  let {settings} = App.app
  let fontSize = settings.fontSize

  React.useEffect1(() => {
    setCSSProperty("--font-size", fontSize->Float.toString ++ "px")
    None
  }, [fontSize])

  let minFontSize = 12.0
  let maxFontSize = 24.0
  let atMin = fontSize <= minFontSize
  let atMax = fontSize >= maxFontSize

  <div className="flex items-center gap-1 text-gray-600">
    <button
      className="font-size-control text-base hover:text-gray-900 disabled:opacity-30 disabled:cursor-not-allowed"
      disabled={atMin}
      onClick={_ => settings.decreaseFontSize()}
      ariaLabel="Decrease font size">
      {"A"->React.string}
    </button>
    <button
      className="font-size-control text-xl hover:text-gray-900 disabled:opacity-30 disabled:cursor-not-allowed"
      disabled={atMax}
      onClick={_ => settings.increaseFontSize()}
      ariaLabel="Increase font size">
      {"A"->React.string}
    </button>
  </div>
}
