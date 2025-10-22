open TiliaReact

module Front = {
  @react.component
  let make = (~front: Recall.Ui.front) => {
    <div> {front.content->React.string} </div>
  }
}

module Back = {
  @react.component
  let make = (~back: Recall.Ui.back) => {
    <div> {back.content->React.string} </div>
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
