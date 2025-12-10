open VitestBdd
open Random

given("a random generator with seed {number}", ({step}, seed) => {
  let random = withSeed(seed)

  step("the random generator should produce the following numbers", table => {
    let numbers = table->toNumbers
    numbers->Array.forEach(
      nb => {
        expect(random()).toBeCloseTo(nb, ~numDigits=2)
      },
    )
  })
})

type entry = {
  float: string,
  seed: string,
}

given("float numbers to use as seed", ({step}, table) => {
  open Random.Bitwise
  let entries: array<entry> = table->toRecords

  step("the float numbers should match the seed", () => {
    entries->Array.forEach(
      entry => {
        expect(entry.float->Float.fromString->Option.getExn->floatToSeed).toBe(
          entry.seed->Int.fromString->Option.getExn,
        )
      },
    )
  })
})
