open TiliaReact

@react.component @genType
let make = () => {
  useTilia()
  let {recall} = App.app

  <div className="mt-8 border-t-slate-200 border-t-2">
    <div>
      {switch recall {
      | None => <RecallTocView />
      | Some(recall) => <RecallView recall />
      }}
    </div>
  </div>
}
