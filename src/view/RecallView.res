open TiliaReact

module Markdown = {
  @module("./Markdown.tsx") @react.component
  external make: (~text: string) => React.element = "default"
}

module Options = {
  @react.component
  let make = (~options: array<Recall.Ui.questionOption>) => {
    useTilia()

    if options->Array.length == 0 {
      <> </>
    } else {
      <ul className="options">
        {options
        ->Array.map(option =>
          <li key={option.id} onClick={_ => option.checked = !option.checked}>
            <input type_="checkbox" checked={option.checked} onChange={_ => ()} />
            <Markdown text={option.content} />
          </li>
        )
        ->React.array}
      </ul>
    }
  }
}

module BackOptions = {
  let correctionClassname = (correction: Recall.Ui.correction) => {
    switch correction {
    | Correct => "correct"
    | Incorrect => "incorrect"
    | Missed => "missed"
    | Blank => "blank"
    }
  }

  @react.component
  let make = (~options: array<Recall.Ui.correctedOption>) => {
    useTilia()

    if options->Array.length == 0 {
      <> </>
    } else {
      <ul className="options">
        {options
        ->Array.map(option =>
          <li key={option.id} className={option.correction->correctionClassname}>
            <input type_="checkbox" defaultChecked={option.checked} />
            <Markdown text={"\n\n" ++ option.content ++ "\n\n"} />
          </li>
        )
        ->React.array}
      </ul>
    }
  }
}
module Front = {
  @react.component
  let make = (~front: Recall.Ui.front) => {
    useTilia()

    <div className="card">
      <div className="card-question">
        <Markdown text={front.content} />
        <Options options={front.options} />
      </div>
      <div className="card-anwser" onClick={_ => front.turn()}>
        <details open_={false}>
          <summary> {"Solution"->React.string} </summary>
        </details>
      </div>
    </div>
  }
}

module Evaluate = {
  @react.component
  let make = (~back: Recall.Ui.back) => {
    useTilia()

    let hasErrors =
      back.options->Array.some(option =>
        option.correction == Missed || option.correction == Incorrect
      )

    let evaluate = (state: CardProgress.state) => {
      back.evaluate(state)
      Browser.scrollTo("recall", ~behavior=Instant)
    }

    <div className="card-evaluate">
      <button className="eval again" onClick={_ => evaluate(CardProgress.Again)}>
        {"Encore"->React.string}
      </button>
      <button className="eval hard" onClick={_ => evaluate(CardProgress.Hard)}>
        {"Difficile"->React.string}
      </button>
      {hasErrors
        ? <> </>
        : <>
            <button className="eval good" onClick={_ => evaluate(CardProgress.Good)}>
              {"Bien"->React.string}
            </button>
            <button className="eval easy" onClick={_ => evaluate(CardProgress.Easy(0))}>
              {"Facile"->React.string}
            </button>
            {switch back.prevState {
            | Some(CardProgress.Easy(i)) =>
              <>
                <button
                  className="eval easy-plus" onClick={_ => evaluate(CardProgress.Easy(i + 1))}>
                  {`Facile ${(i + 2)->Int.toString}x`->React.string}
                </button>
              </>
            | _ => <> </>
            }}
          </>}
    </div>
  }
}

module Back = {
  @react.component
  let make = (~back: Recall.Ui.back) => {
    useTilia()

    <div className="card">
      <div className="card-question">
        <Markdown text={back.content} />
        <BackOptions options={back.options} />
      </div>
      <div className="card-answer">
        <details open_={true}>
          <summary onClick={_ => back.turn()}> {"Solution"->React.string} </summary>
          <Evaluate back={back} />
          <Markdown text={back.solution} />
          <Evaluate back={back} />
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

  <>
    <div className="card-wrapper">
      <a id="recall" />
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
  </>
}
