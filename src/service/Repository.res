module Storage = {
  let progressId = id => `progress-${id}`
  @val external getItem: string => nullable<string> = "localStorage.getItem"
  @val external setItem: (string, string) => unit = "localStorage.setItem"
}

module Browser = {
  type response = {text: unit => promise<string>}
  external fetch: string => promise<response> = "fetch"

  let fetchData = async (path: string) => {
    Js.log(`FETCHING ${path}`)
    try {
      let response = await fetch(path)
      Some(await response.text())
    } catch {
    | Js.Exn.Error(error) => {
        Js.log2("Error fetching data: ", error)
        None
      }
    | _ => {
        Js.log("Unknown error")
        None
      }
    }
  }
}

let make: string => RepositoryType.t = (stacksPath: string) => {
  open Storage
  {
    stack: {
      toc: async path => {
        switch await Browser.fetchData(`${path}/stacks-toc.json`) {
        | None => []
        | Some(body) => body->S.parseJsonStringOrThrow(Stack.tocSchema)
        }
      },
      get: async id => {
        switch await Browser.fetchData(`${stacksPath}/${id}.json`) {
        | None => None
        | Some(body) => Some(body->S.parseJsonStringOrThrow(Stack.stackSchema))
        }
      },
    },
    progress: {
      get: async id => {
        switch getItem(progressId(id)) {
        | Value(body) => Some(body->S.parseJsonStringOrThrow(Stack.progressSchema))
        | _ => None
        }
      },
      save: async progress => {
        setItem(
          progressId(progress.id),
          progress
          ->S.reverseConvertOrThrow(Stack.progressSchema)
          ->JSON.stringifyAny(~space=2)
          ->Option.getExn,
        )
      },
    },
  }
}
