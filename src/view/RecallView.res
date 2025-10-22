open TiliaReact

module Markdown = {
  @module("./Markdown.tsx") @react.component
  external make: (~text: string) => React.element = "default"
}

module Front = {
  @react.component
  let make = (~front: Recall.Ui.front) => {
    <div className="card">
      <div className="card-question" onClick={_ => front.turn()}>
        <Markdown text={front.content} />
      </div>
    </div>
  }
}

module Back = {
  @react.component
  let make = (~back: Recall.Ui.back) => {
    <div className="card">
      <div className="card-question">
        <Markdown text={back.content} />
      </div>
      <div className="card-answer">
        <details open_={true}>
          <summary>
            <strong> {"Solution"->React.string} </strong>
          </summary>
          <div className="card-evaluate">
            <button className="eval again" onClick={_ => back.evaluate(CardProgress.Again)}>
              {"Again"->React.string}
            </button>
            <button className="eval hard" onClick={_ => back.evaluate(CardProgress.Hard)}>
              {"Hard"->React.string}
            </button>
            <button className="eval good" onClick={_ => back.evaluate(CardProgress.Good)}>
              {"Good"->React.string}
            </button>
            <button className="eval easy" onClick={_ => back.evaluate(CardProgress.Easy(1))}>
              {"Easy"->React.string}
            </button>
          </div>
          <Markdown text={back.solution} />
        </details>
      </div>
    </div>
  }
}

module RecallView = {
  @react.component
  let make = (~recall: Recall.t) => {
    useTilia()
    switch recall.view {
    | Front(front) => <Front front />
    | Back(back) => <Back back />
    }
  }
}

@react.component
let make = () => {
  useTilia()
  let {recall} = App.app
  switch recall {
  | None => <div> {"No recall found"->React.string} </div>
  | Some(recall) => <RecallView recall />
  }
}
