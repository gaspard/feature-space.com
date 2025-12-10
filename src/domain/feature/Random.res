module BoxMuller = {
  type t = {z0: float, z1: float}

  let box = random => {
    let u1 = random()
    let u2 = random()
    let r = sqrt(-2.0 *. Math.log(u1))
    let theta = 2.0 *. Math.Constants.pi *. u2
    {z0: r *. Math.cos(theta), z1: r *. Math.sin(theta)}
  }
}

module Bitwise = {
  let band = (_a: int, _b: int): int => %raw(`_a & _b`)
  let xor = (_a: int, _b: int): int => %raw(`_a ^ _b`)
  external floatToSeed: float => int = "floatToSeed"

  %%raw(`
  function floatToSeed(seed) {
    var buffer = new ArrayBuffer(8);
    var floatView = new Float64Array(buffer);
    var intView = new Uint32Array(buffer);
    floatView[0] = seed;
    return intView[0] ^ intView[1];
  }
`)

  let floatToSeed = floatToSeed
}

let withSeed = (seed: float) => {
  let state = ref(seed->Bitwise.floatToSeed)
  () => {
    let multiplied = state.contents * 1664525
    let added = multiplied + 1013904223
    let next: int = Bitwise.band(added, 0x7FFFFFFF)
    state := next
    next->Int.toFloat /. 2147483648.0
  }
}

module Gaussian = {
  let make = random => {
    (mu: float, sigma: float) => {
      let leftover = ref((None: option<float>))
      switch leftover.contents {
      | Some(z) => {
          leftover := None
          mu +. sigma *. z
        }
      | None => {
          let {z0, z1} = BoxMuller.box(random)
          leftover := Some(z1)
          mu +. sigma *. z0
        }
      }
    }
  }

  let ofSeed = (seed: float, mu: float, sigma: float) => {
    let {z0} = BoxMuller.box(withSeed(seed))
    mu +. sigma *. z0
  }
}

@inline
let noop = (mu: float, _sigma: float) => mu
