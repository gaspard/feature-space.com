@genType
let default = () => {
  let done = ref(false)

  {
    "name": "stack-json-generator",
    "buildStart": () => {
      if !done.contents {
        done.contents = true
        // Call makeStacksToJson with real system
        let system = System.make()
        let generator = StackParser.makeStacksToJson(system.fs, system.path)
        try {
          let toc = generator("src/pages", "public", "public/stacks")
          Js.log(
            `*********************************************\nStacks to JSON: ${toc
              ->Array.length
              ->Int.toString} stacks generated\n*******************************************************`,
          )
        } catch {
        | Js.Exn.Error(error) => {
            Js.log("Error during stack JSON generation:")
            Js.log(error)
          }
        | _ => {
            Js.log("Error during stack JSON generation:")
            Js.log("Unknown error")
          }
        }
      }
    },
  }
}
