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

  @module("@supabase/supabase-js")
  external createClient: (string, string) => client = "createClient"

  @send external from: (client, string) => table = "from"
  @send external select: (table, string) => query = "select"
  @send external eq: (query, string, string) => query = "eq"
  @send external maybeSingle: query => promise<response<'a>> = "maybeSingle"
  @send external upsert: (table, 'a) => query = "upsert"
}

type progressRow = {
  stack_id: string,
  active: bool,
  cards: Js.Json.t,
}

type settingsRow = {
  key: string,
  value: string,
}

let make: (string, string) => RepositoryType.t = (url: string, anonKey: string) => {
  let client = Supabase.createClient(url, anonKey)
  let stacksPath = "/stacks"

  // Settings cache for synchronous access
  let settingsCache: dict<string> = Dict.make()

  {
    stack: {
      toc: async path => {
        let fullPath = path === "/" ? "/stacks-toc.json" : `${path}/stacks-toc.json`
        switch await Browser.fetchData(fullPath) {
        | None => []
        | Some(body) =>
          try {
            let json = Js.Json.parseExn(body)
            json->S.parseOrThrow(Stack.tocSchema)
          } catch {
          | Js.Exn.Error(e) =>
            Js.log2("Error parsing TOC:", Js.Exn.message(e))
            []
          | _ =>
            Js.log("Error parsing TOC JSON")
            []
          }
        }
      },
      get: async id => {
        switch await Browser.fetchData(`${stacksPath}/${id}.json`) {
        | None => None
        | Some(body) =>
          try {
            let json = Js.Json.parseExn(body)
            Some(json->S.parseOrThrow(Stack.stackSchema))
          } catch {
          | Js.Exn.Error(e) =>
            Js.log2("Error parsing stack:", Js.Exn.message(e))
            None
          | _ =>
            Js.log("Error parsing stack JSON")
            None
          }
        }
      },
    },
    progress: {
      get: async id => {
        open Supabase
        let table = client->from("progress")
        let query = table->select("*")->eq("stack_id", id)
        let response: response<progressRow> = await query->maybeSingle

        switch response.data {
        | None => None
        | Some(row) =>
          try {
            let cards = row.cards->S.parseOrThrow(S.dict(CardProgress.progressSchema))
            Some({
              Stack.id: row.stack_id,
              active: row.active,
              cards,
            })
          } catch {
          | Js.Exn.Error(e) =>
            Js.log2("Error parsing progress cards from DB:", Js.Exn.message(e))
            None
          | _ => None
          }
        }
      },
      save: async progress => {
        open Supabase

        try {
          // Serialize cards using the schema
          let cardsJsonUnknown =
            progress.cards->S.reverseConvertOrThrow(S.dict(CardProgress.progressSchema))

          // Cast to Js.Json.t
          let cardsJson: Js.Json.t = Obj.magic(cardsJsonUnknown)

          let row: progressRow = {
            stack_id: progress.id,
            active: progress.active,
            cards: cardsJson,
          }

          let table = client->from("progress")
          let query = table->upsert(row)
          let response = await query->maybeSingle
          switch response.error {
          | Some(error) => Js.log2("[Supabase.saveProgress] Error saving progress: ", error.message)
          | None => ()
          }
        } catch {
        | Js.Exn.Error(e) =>
          Js.log2("[Supabase.saveProgress] Error serializing cards: ", Js.Exn.message(e))
        | _ => ()
        }
      },
    },
    settings: {
      get: key => {
        // Return from cache (synchronous)
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
          let row: settingsRow = {
            key,
            value,
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
