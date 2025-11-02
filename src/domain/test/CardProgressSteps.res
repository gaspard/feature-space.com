open VitestBdd
open CardProgress

given("a card evaluation", ({step}, table) => {
  step("the recall times should match", () => {
    toRecords(table)->Array.forEach(
      record => {
        let timestamp = record["day"]->Option.getExn->Float.fromString->Option.getExn
        let state = record["state"]->Option.getExn->ofString
        expect(recallTime(timestamp, state, ~dayLength=1.)).toBe(
          record["recall"]->Option.getExn->Float.fromString->Option.getExn,
        )
      },
    )
  })
})
