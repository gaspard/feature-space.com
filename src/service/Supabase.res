module Browser = {
  type response = {text: unit => promise<string>}
  external fetch: string => promise<response> = "fetch"

  let fetchData = async (path: string) => {
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
module Supabase = {
  type client
  type table
  type query
  type error = {message: string}
  type response<'a> = {data: option<'a>, error: option<error>}

  type authOptions = {
    autoRefreshToken: bool,
    persistSession: bool,
  }
  type dbOptions = {schema: string}

  @module("@supabase/supabase-js")
  external createClient: (string, string) => client = "createClient"

  @send external from: (client, string) => table = "from"
  @send external select: (table, string) => query = "select"
  @send external eq: (query, string, string) => query = "eq"
  @send external maybeSingle: query => promise<response<'a>> = "maybeSingle"
  @send external upsert: (table, 'a) => query = "upsert"
}

let make: (string, string) => RepositoryType.t = (url: string, anonKey: string) => {
  let client = Supabase.createClient(url, anonKey)
  let stacksPath = "/stacks"

  // Settings cache for synchronous access
  let settingsCache: dict<string> = Dict.make()

  {
    stack: {
      toc: async path => {
        switch await Browser.fetchData(`${path === "/" ? "/" : `${path}/`}stacks-toc.json`) {
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
        open Supabase
        let table = client->from("progress")
        let query = table->select("*")->eq("stack_id", id)
        let response = await query->maybeSingle
        switch response.data {
        | None => None
        | Some(row) =>
          let rowDict = (row: Js.Dict.t<'a>)
          let active = Js.Dict.unsafeGet(rowDict, "active")
          let cards = Js.Dict.unsafeGet(rowDict, "cards")
          let activeStr = if Obj.magic(active) {
            "true"
          } else {
            "false"
          }
          let cardsStr = Obj.magic(cards)
          let fullProgressJson = `{"id":"${id}","active":${activeStr},"cards":${cardsStr}`
          try {
            Some(fullProgressJson->S.parseJsonStringOrThrow(Stack.progressSchema))
          } catch {
          | _ => None
          }
        }
      },
      save: async progress => {
        open Supabase
        let progressJson = progress->S.reverseConvertOrThrow(Stack.progressSchema)
        let progressDict: Js.Dict.t<'a> = Obj.magic(progressJson)
        let cards = Js.Dict.unsafeGet(progressDict, "cards")
        let cardsJson = Obj.magic(cards)->stringify
        let row = {
          "stack_id": progress.id,
          "active": progress.active,
          "cards": cardsJson,
        }
        let table = client->from("progress")
        let query = table->upsert(row)
        let response = await query->maybeSingle
        switch response.error {
        | Some(error) => Js.log2("[Supabase.saveProgress] Error saving progress: ", error.message)
        | None => ()
        }
      },
    },
    settings: {
      get: key => {
        // Return from cache (synchronous)
        // Note: Cache is populated on first access or save
        // For full Supabase integration, this would need to be async
        switch settingsCache->Dict.get(key) {
        | Some(value) => Value(value)
        | None => Null
        }
      },
      save: (key, value) => {
        // Update cache immediately (synchronous)
        settingsCache->Dict.set(key, value)
        // Update Supabase asynchronously (fire and forget)
        ignore(async () => {
          open Supabase
          let table = client->from("settings")
          let row = {
            "key": key,
            "value": value,
          }
          let query = table->upsert(row)
          let response = await query->maybeSingle
          switch response.error {
          | Some(error) => Js.log2("[Supabase.saveSettings] Error saving setting: ", error.message)
          | None => ()
          }
        })
      },
    },
  }
}
