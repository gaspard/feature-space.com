open TiliaReact

module Markdown = {
  @module("./Markdown.tsx") @react.component
  external make: (~text: string) => React.element = "default"
}

module Front = {
  @react.component
  let make = (~front: Recall.Ui.front) => {
    useTilia()

    <div className="card">
      <div className="card-question">
        <Markdown text={front.content} />
        <ul className="options">
          {front.options
          ->Array.map(option =>
            <li key={option.id} onClick={_ => option.checked = !option.checked}>
              <input type_="checkbox" checked={option.checked} onChange={_ => ()} />
              <Markdown text={option.content} />
            </li>
          )
          ->React.array}
        </ul>
      </div>
      <div className="card-anwser" onClick={_ => front.turn()}>
        <details open_={false}>
          <summary>
            <strong> {"Solution"->React.string} </strong>
          </summary>
        </details>
      </div>
    </div>
  }
}

module Back = {
  let correctionClassname = (correction: Recall.Ui.correction) => {
    switch correction {
    | Correct => "correct"
    | Incorrect => "incorrect"
    | Missed => "missed"
    | Blank => "blank"
    }
  }
  @react.component
  let make = (~back: Recall.Ui.back) => {
    useTilia()

    let hasErrors =
      back.options->Array.some(option =>
        option.correction == Missed || option.correction == Incorrect
      )

    <div className="card">
      <div className="card-question">
        <Markdown text={back.content} />
        <ul className="options">
          {back.options
          ->Array.map(option =>
            <li key={option.id} className={option.correction->correctionClassname}>
              <input type_="checkbox" defaultChecked={option.checked} />
              <Markdown text={"\n\n" ++ option.content ++ "\n\n"} />
            </li>
          )
          ->React.array}
        </ul>
      </div>
      <div className="card-answer">
        <details open_={true}>
          <summary onClick={_ => back.turn()}>
            <strong> {"Solution"->React.string} </strong>
          </summary>
          <div className="card-evaluate">
            <button className="eval again" onClick={_ => back.evaluate(CardProgress.Again)}>
              {"Encore"->React.string}
            </button>
            <button className="eval hard" onClick={_ => back.evaluate(CardProgress.Hard)}>
              {"Difficile"->React.string}
            </button>
            {hasErrors
              ? <> </>
              : <>
                  <button className="eval good" onClick={_ => back.evaluate(CardProgress.Good)}>
                    {"Bien"->React.string}
                  </button>
                  <button className="eval easy" onClick={_ => back.evaluate(CardProgress.Easy(1))}>
                    {"Facile"->React.string}
                  </button>
                </>}
          </div>
          <Markdown text={back.solution} />
        </details>
      </div>
    </div>
  }
}

module Done = {
  @react.component
  let make = () => {
    useTilia()

    <div className="card">
      <div className="card-question">
        <p>
          {"Tout est terminé. Si vous voulez revoir encore, cliquez sur le bouton."->React.string}
          <button className="more" onClick={_ => App.app.done()}> {"Plus"->React.string} </button>
        </p>
      </div>
    </div>
  }
}

@react.component
let make = (~recall: Recall.t) => {
  useTilia()
  <div className="card-wrapper">
    <div className="stats">
      <span> {"session"->React.string} </span>
      <span className="col-span-3 font-bold text-left">
        {recall.stats.stackCount->Int.toString->React.string}
      </span>
      <span> {"à réviser"->React.string} </span>
      <span className="num"> {recall.stats.toRecall->Int.toString->React.string} </span>
      <span> {"vues"->React.string} </span>
      <span className="num"> {recall.stats.seen->Int.toString->React.string} </span>
      <span> {"nouvelles"->React.string} </span>
      <span className="num"> {recall.stats.new->Int.toString->React.string} </span>
      <span> {"total"->React.string} </span>
      <span className="num"> {recall.stats.total->Int.toString->React.string} </span>
    </div>
    {switch recall.view {
    | Front(front) => <Front front />
    | Back(back) => <Back back />
    | Done => <Done />
    }}
  </div>
}
