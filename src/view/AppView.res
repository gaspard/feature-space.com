open TiliaReact

@react.component @genType
let make = () => {
  useTilia()
  let {recall} = App.app
  <div>
    {switch recall {
    | None => <RecallTocView />
    | Some(recall) => <RecallView recall />
    }}
  </div>
}
