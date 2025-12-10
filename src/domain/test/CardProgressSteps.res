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

given("a card evaluation with sample", ({step}, table) => {
  step("the recall times should match with {number} sigma", (sigma) => {
    toRecords(table)->Array.forEach(
      record => {
        let timestamp = record["day"]->Option.getExn->Float.fromString->Option.getExn
        let state = record["state"]->Option.getExn->ofString
        // The timestamp is used to feed randomness: this produces deterministic results
        // when sorting cards while having gaussian distribution around day length.
        let sample = (timestamp, v) => Random.Gaussian.ofSeed(timestamp, v, sigma)
        expect(recallTime(timestamp, state, ~dayLength=1., ~sample)).toBeCloseTo(
          record["recall"]->Option.getExn->Float.fromString->Option.getExn,
          ~numDigits=2,
        )
      },
    )
  })
})
