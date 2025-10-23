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
              {"Encore"->React.string}
            </button>
            <button className="eval hard" onClick={_ => back.evaluate(CardProgress.Hard)}>
              {"Difficile"->React.string}
            </button>
            <button className="eval good" onClick={_ => back.evaluate(CardProgress.Good)}>
              {"Bien"->React.string}
            </button>
            <button className="eval easy" onClick={_ => back.evaluate(CardProgress.Easy(1))}>
              {"Facile"->React.string}
            </button>
          </div>
          <Markdown text={back.solution} />
        </details>
      </div>
    </div>
  }
}

@react.component
let make = (~recall: Recall.t) => {
  useTilia()
  <div>
    <div className="stats">
      <span> {"à réviser"->React.string} </span>
      <span> {recall.stats.toRecall->Int.toString->React.string} </span>
      <span> {"vues"->React.string} </span>
      <span> {recall.stats.seen->Int.toString->React.string} </span>
      <span> {"nouvelles"->React.string} </span>
      <span> {recall.stats.new->Int.toString->React.string} </span>
      <span> {"total"->React.string} </span>
      <span> {recall.stats.total->Int.toString->React.string} </span>
    </div>
    {switch recall.view {
    | Front(front) => <Front front />
    | Back(back) => <Back back />
    }}
  </div>
}
