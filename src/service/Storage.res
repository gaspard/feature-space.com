type t = {
  getItem: string => nullable<string>,
  setItem: (string, string) => unit,
  getAllKeys: unit => array<string>,
}

module Local = {
  let progressId = id => `progress-${id}`
  @val external getItem: string => nullable<string> = "localStorage.getItem"
  @val external setItem: (string, string) => unit = "localStorage.setItem"
  @val external getAllKeys: unit => array<string> = "localStorage.getAllKeys"

  let make = () => {
    {
      getItem,
      setItem,
      getAllKeys,
    }
  }
}

module Supabase = {
  type client
  type table
  type query
  type error = {message: string}
  type response<'a> = {
    data: option<'a>,
    error: option<error>,
    status: int,
    statusText: string,
  }

  @module("@supabase/supabase-js")
  external createClient: (string, string) => client = "createClient"

  @send external from: (client, string) => table = "from"
  @send external select: (table, string) => query = "select"
  @send external eq: (query, string, string) => query = "eq"
  @send external order: (query, string, ~ascending: bool=?) => query = "order"
  @send external limit: (query, int) => query = "limit"
  @send external single: query => promise<response<'a>> = "single"
  @send external maybeSingle: query => promise<response<'a>> = "maybeSingle"
  @send external upsert: (table, 'a) => query = "upsert"

  // Helper to treat query as promise
  external toPromise: query => promise<response<'a>> = "%identity"

  let make = (url: string, anonKey: string) => {
    createClient(url, anonKey)
  }
}
