// Supabase bindings for ReScript
module Client = {
  type t
  type auth
  type from
  @module("@supabase/supabase-js") external createClient: (string, string) => t = "createClient"
  @get external auth: t => auth = "auth"
  @send external from: (t, string) => from = "from"
}

module Auth = {
  type user = {
    id: string,
    email: option<string>,
  }

  type session = {user: user}

  type authError = {message: string}

  // Supabase returns {user: {...}, session: null} when email confirmation is required
  type authResponseData = {
    user: option<user>,
    session: option<session>,
  }

  type authResponse = {
    data: option<authResponseData>,
    error: option<authError>,
  }

  type signInOptions = {
    email: string,
    password: string,
  }

  type signUpOptions = {
    email: string,
    password: string,
  }

  type signOutResponse = {error: option<authError>}

  type authStateChangeEvent =
    | SignedIn(session)
    | SignedOut
    | TokenRefreshed(session)
    | UserUpdated(session)

  type authStateChangeCallback = authStateChangeEvent => unit

  // Supabase's onAuthStateChange callback receives two parameters: (event: string, session: session | null)
  // We use a wrapper callback type that matches Supabase's signature
  type supabaseAuthStateChangeCallback = (string, option<session>) => unit

  @send
  external onAuthStateChange: (Client.auth, supabaseAuthStateChangeCallback) => unit =
    "onAuthStateChange"

  @send external getSession: Client.auth => promise<authResponse> = "getSession"
  @send
  external signInWithPassword: (Client.auth, signInOptions) => promise<authResponse> =
    "signInWithPassword"
  @send external signUp: (Client.auth, signUpOptions) => promise<authResponse> = "signUp"
  @send external signOut: Client.auth => promise<signOutResponse> = "signOut"
}

module Query = {
  type t
  type dbError = {
    message: string,
    code: option<string>,
  }
  type dbResponse<'a> = {
    data: option<'a>,
    error: option<dbError>,
  }

  @send external select: (Client.from, string) => t = "select"
  @send external eq: (t, string, string) => t = "eq"
  @send external insert: (Client.from, 'a) => t = "insert"
  @send external update: (Client.from, 'a) => t = "update"
  @send external upsert: (Client.from, 'a) => t = "upsert"
  @send external single: t => promise<dbResponse<'a>> = "single"
  @send external maybeSingle: t => promise<dbResponse<'a>> = "maybeSingle"
}

module Navigator = {
  @val external onLine: bool = "navigator.onLine"
  @val external addEventListener: (string, unit => unit) => unit = "window.addEventListener"
  @val external removeEventListener: (string, unit => unit) => unit = "window.removeEventListener"
}

// Public Supabase credentials for numinum project
let client = Client.createClient(
  "https://ymasvqhkmgrhwfpvojgk.supabase.co",
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InltYXN2cWhrbWdyaHdmcHZvamdrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjIxOTIwMDQsImV4cCI6MjA3Nzc2ODAwNH0.dFmQKiq7ce8uZ_iGP03OTxwWQ6eIRW9lT3xpwiMBDHU",
)

let getClient = () => client

// Sign-up result type
type signUpResult =
  | Success(Auth.session)
  | EmailConfirmationRequired
  | Error(string)

// Sign-in result type
type signInResult =
  | Success(Auth.session)
  | Error(string)

let getSession = async (client: Client.t) => {
  let auth = Client.auth(client)
  let response = await Auth.getSession(auth)
  switch response.data {
  | Some(data) => data.session
  | None => None
  }
}

let signIn = async (client: Client.t, email: string, password: string) => {
  let auth = Client.auth(client)
  let response = await Auth.signInWithPassword(auth, {email, password})
  switch response.error {
  | Some(_error) => None
  | None =>
    switch response.data {
    | Some(data) => data.session
    | None => None
    }
  }
}

// Get sign-in result with proper type and error messages
let signInResult = async (client: Client.t, email: string, password: string) => {
  let auth = Client.auth(client)
  let response = await Auth.signInWithPassword(auth, {email, password})
  // Check if error is null or undefined explicitly
  let hasError: bool = %raw(`response.error !== null && response.error !== undefined`)
  if hasError {
    // Safely extract error message
    let errorMsg: string = %raw(`
      (response.error && response.error !== null && response.error.message && response.error.message !== null && response.error.message !== "null") 
        ? response.error.message 
        : (response.error && response.error !== null && response.error.msg && response.error.msg !== null && response.error.msg !== "null")
          ? response.error.msg
          : "La connexion a échoué. Veuillez vérifier vos identifiants."
    `)
    Error(errorMsg)
  } else {
    switch response.data {
    | Some(data) =>
      switch data.session {
      | Some(session) => Success(session)
      | None => Error("La connexion a échoué. Veuillez vérifier vos identifiants.")
      }
    | None => Error("La connexion a échoué. Veuillez vérifier vos identifiants.")
    }
  }
}

let signUp = async (client: Client.t, email: string, password: string) => {
  let auth = Client.auth(client)
  let response = await Auth.signUp(auth, {email, password})
  switch response.error {
  | Some(_error) => None
  | None =>
    switch response.data {
    | Some(data) => data.session
    | None => None
    }
  }
}

// Get sign-up result with proper type
let signUpResult = async (client: Client.t, email: string, password: string): signUpResult => {
  let auth = Client.auth(client)
  let response = await Auth.signUp(auth, {email, password})
  // Check if error is null or undefined explicitly (ReScript option might treat null as Some(null))
  let hasError: bool = %raw(`response.error !== null && response.error !== undefined`)
  if hasError {
    // Safely extract error message using %raw to handle null/undefined cases
    let errorMsg: string = %raw(`
      (response.error && response.error !== null && response.error.message && response.error.message !== null && response.error.message !== "null") 
        ? response.error.message 
        : (response.error && response.error !== null && response.error.msg && response.error.msg !== null && response.error.msg !== "null")
          ? response.error.msg
          : "L'inscription a échoué. Veuillez réessayer."
    `)
    Error(errorMsg)
  } else {
    switch response.data {
    | Some(data) =>
      // Check if session exists (email confirmation may be required)
      let sessionExists: bool = %raw(`data.session !== null && data.session !== undefined`)
      if sessionExists {
        switch data.session {
        | Some(session) => Success(session)
        | None => EmailConfirmationRequired
        }
      } else {
        // Session is null - email confirmation required
        EmailConfirmationRequired
      }
    | None => Error("L'inscription a échoué. Veuillez réessayer.")
    }
  }
}

// Get sign-up error message for better error handling (deprecated, use signUpResult instead)
let signUpWithError = async (client: Client.t, email: string, password: string) => {
  let result = await signUpResult(client, email, password)
  switch result {
  | Success(session) => (Some(session), None)
  | EmailConfirmationRequired => (
      None,
      Some(
        "Veuillez vérifier votre email pour confirmer votre compte. Un email de confirmation a été envoyé.",
      ),
    )
  | Error(msg) => (None, Some(msg))
  }
}

let signOut = async (client: Client.t) => {
  let auth = Client.auth(client)
  let response = await Auth.signOut(auth)
  switch response.error {
  | None => true
  | Some(_) => false
  }
}

let onAuthStateChange = (client: Client.t, callback: Auth.authStateChangeCallback) => {
  let auth = Client.auth(client)
  // Create a wrapper callback that matches Supabase's signature
  let supabaseCallback: Auth.supabaseAuthStateChangeCallback = (event, sessionOpt) => {
    // Map Supabase event strings to our variant types
    let mappedEvent: Auth.authStateChangeEvent = switch event {
    | "SIGNED_IN" =>
      switch sessionOpt {
      | Some(s) =>
        Js.log(`[Supabase] SIGNED_IN event received, session.user.id=${s.user.id}`)
        SignedIn(s)
      | None =>
        Js.log(`[Supabase] SIGNED_IN event received but session is null`)
        SignedOut
      }
    | "SIGNED_OUT" =>
      Js.log(`[Supabase] SIGNED_OUT event received`)
      SignedOut
    | "TOKEN_REFRESHED" =>
      switch sessionOpt {
      | Some(s) => TokenRefreshed(s)
      | None => SignedOut
      }
    | "USER_UPDATED" =>
      switch sessionOpt {
      | Some(s) => UserUpdated(s)
      | None => SignedOut
      }
    | "INITIAL_SESSION" =>
      // INITIAL_SESSION is fired when Supabase first retrieves the session
      // If there's a session, treat it as SignedIn, otherwise ignore it
      switch sessionOpt {
      | Some(s) =>
        Js.log(`[Supabase] INITIAL_SESSION event received with session, userId=${s.user.id}`)
        SignedIn(s)
      | None =>
        Js.log(`[Supabase] INITIAL_SESSION event received but no session`)
        SignedOut
      }
    | _ =>
      Js.log(`[Supabase] Unknown auth event: ${event}`)
      SignedOut
    }
    callback(mappedEvent)
  }
  Auth.onAuthStateChange(auth, supabaseCallback)
}

type progressRow = {
  stack_id: string,
  active: bool,
  cards: string, // JSON string storing the cards dict
}

let getProgress = async (client: Client.t, userId: string, stackId: string) => {
  let table = Client.from(client, "progress")
  let select = Query.select(table, "*")
  let query = Query.eq(select, "user_id", userId)
  let eqQuery = Query.eq(query, "stack_id", stackId)
  let response = await Query.maybeSingle(eqQuery)
  switch response.data {
  | Some(row: progressRow) =>
    // Reconstruct the full progress JSON from row data
    let activeStr = row.active ? "true" : "false"
    let fullProgressJson = `{"id":"${stackId}","active":${activeStr},"cards":${row.cards}}`
    try {
      Some(fullProgressJson->S.parseJsonStringOrThrow(Stack.progressSchema))
    } catch {
    | _ => None
    }
  | _ => None
  }
}

let getAllProgress = async (client: Client.t, userId: string) => {
  let table = Client.from(client, "progress")
  let select = Query.select(table, "*")
  let query = Query.eq(select, "user_id", userId)
  ignore(await Query.maybeSingle(query))
  // TODO: Implement proper query for all progress
  []
}

let saveProgress = async (client: Client.t, userId: string, progress: Stack.progress) => {
  // Serialize cards dict to JSON string
  // First convert to schema-compatible format, then extract cards
  let progressJson = progress->S.reverseConvertOrThrow(Stack.progressSchema)
  let cardsJson: string = %raw(`JSON.stringify(progressJson.cards)`)
  ignore(progressJson) // Use progressJson in raw expression above

  let row = {
    "user_id": userId,
    "stack_id": progress.id,
    "active": progress.active,
    "cards": cardsJson,
  }
  Js.log(`[Supabase.saveProgress] Saving progress for stack ${progress.id}`)
  let table = Client.from(client, "progress")
  let upsert = Query.upsert(table, row)
  let response = await Query.maybeSingle(upsert)
  switch response.error {
  | None =>
    Js.log(`[Supabase.saveProgress] Successfully saved progress for ${progress.id}`)
    true
  | Some(error) =>
    Js.log(`[Supabase.saveProgress] Error saving progress for ${progress.id}: ${error.message}`)
    false
  }
}

let online = () => Navigator.onLine

let onOnline = (callback: unit => unit) => {
  Navigator.addEventListener("online", callback)
}

let onOffline = (callback: unit => unit) => {
  Navigator.addEventListener("offline", callback)
}

let removeOnOnline = (callback: unit => unit) => {
  Navigator.removeEventListener("online", callback)
}

let removeOnOffline = (callback: unit => unit) => {
  Navigator.removeEventListener("offline", callback)
}
