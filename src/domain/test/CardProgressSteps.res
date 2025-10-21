open VitestBdd
open CardProgress

given("a card evaluation", ({step}, table) => {
  step("the recall times should match", () => {
    toRecords(table)->Array.forEach(
      record => {
        let timestamp =
          record["day"]->Option.getExn->Float.fromString->Option.getExn *. 3600. *. 24.
        let state = record["state"]->Option.getExn->ofString
        expect(recallTime(timestamp, state) /. 3600. /. 24.).toBe(
          record["recall"]->Option.getExn->Float.fromString->Option.getExn,
        )
      },
    )
  })
})
