open VitestBdd
open Stack

let fixtures = System.Path.join(System.Process.cwd(), "src/domain/test/fixtures")
let readFixture = filename => System.Fs.readFileSync(System.Path.join(fixtures, filename), "utf8")

given("a {string} file content", ({step}, filename) => {
  let content = readFixture(filename)
  let stackRef = ref(None)

  step("I parse the stack", () => {
    stackRef := Some(StackParser.parse(content))
  })

  step("the stack info should contain", table => {
    let stack = stackRef.contents->Option.getExn
    let records = toRecords(table)

    records->Array.forEach(
      record => {
        let field = record["field"]->Option.getExn
        let value = record["value"]->Option.getExn

        switch field {
        | "id" => expect(stack.info.id).toBe(value)
        | "title" => expect(stack.info.title).toBe(value)
        | "kind" => {
            let kind = switch value {
            | "Cards" => Cards
            | "Quiz" => Quiz
            | _ => Cards
            }
            expect(stack.info.kind).toBe(kind)
          }
        | "level" => {
            let level = switch value {
            | "Regular" => Regular
            | "Pro" => Pro
            | _ => Regular
            }
            expect(stack.info.level).toBe(level)
          }
        | "course" => expect(stack.info.course).toBe(value)
        | "chapter" => expect(stack.info.chapter).toBe(value)
        | "tags" => {
            let tags = value->String.split(",")->Array.map(String.trim)
            expect(stack.info.tags).toEqual(tags)
          }
        | _ => ()
        }
      },
    )
  })
})

let syst = System.make()
let mockSystem = () => {
  let output = Dict.make()
  let writeFileSync = (path, content, _encoding) => {
    output->Dict.set(path, content)
  }
  let readFileSync = (path, encoding) => {
    switch output->Dict.get(path) {
    | None => syst.fs.readFileSync(path, encoding)
    | Some(v) => v
    }
  }
  let existsSync = path => {
    switch output->Dict.get(path) {
    | None => syst.fs.existsSync(path)
    | Some(_) => true
    }
  }
  let mkdirSync = path => {
    output->Dict.set(path, "NEW DIRECTORY")
  }
  {
    SystemType.path: syst.path,
    fs: {
      ...syst.fs,
      mkdirSync,
      writeFileSync,
      readFileSync,
      existsSync,
    },
    process: syst.process,
  }
}

given("a clean {string} fixtures directory", ({step}, dirname) => {
  let {fs, path} = mockSystem()
  let {join} = path
  let stacksToJson = StackParser.makeStacksToJson(fs, path)
  let fdir = join(fixtures, dirname)

  step("I generate JSON files for all stacks", () => {
    stacksToJson(fdir, join(fixtures, "dist"), join(fixtures, "dist/stacks"))
  })

  step("the json file {string} should exist", filename => {
    expect(fs.existsSync(join(fixtures, filename))).toBe(true)
  })

  step("the json file {string} should contain", (filename, table) => {
    let content =
      fs.readFileSync(join(fixtures, filename), "utf8")->S.parseJsonStringOrThrow(Stack.stackSchema)
    let records = toRecords(table)
    records->Array.forEach(
      record => {
        let field = record["json path"]->Option.getExn
        let value = record["value"]->Option.getExn
        switch field {
        | "info.id" => expect(content.info.id).toBe(value)
        | "info.title" => expect(content.info.title).toBe(value)
        | "info.kind" =>
          expect(content.info.kind).toBe(value->S.parseOrThrow(Stack.stackTypeSchema))
        | "info.level" => expect(content.info.level).toBe(value->S.parseOrThrow(Stack.levelSchema))
        | "info.course" => expect(content.info.course).toBe(value)
        | "info.chapter" => expect(content.info.chapter).toBe(value)
        | "info.tags" => {
            let tags = value->String.split(",")->Array.map(String.trim)
            expect(content.info.tags).toEqual(tags)
          }
        | "info.count" => expect(content.info.count).toBe(value->Int.fromString)
        | "cards.0.stackId" => expect((content.cards->Array.getUnsafe(0)).stackId).toBe(value)
        | "cards.0.options.0.content" =>
          expect(((content.cards->Array.getUnsafe(0)).options->Array.getUnsafe(0)).content).toBe(
            value,
          )
        | _ => Js.Exn.raiseError("Unknown field: " ++ field)
        }
      },
    )
  })

  step("the json toc file {string} should contain", (filename, table) => {
    let content =
      fs.readFileSync(join(fixtures, filename), "utf8")->S.parseJsonStringOrThrow(Stack.tocSchema)
    let records = toRecords(table)
    records->Array.forEach(
      record => {
        let field = record["json path"]->Option.getExn->String.split(".")
        let index = field[0]->Option.getExn->Int.fromString->Option.getExn
        let field = field[1]->Option.getExn
        let value = record["value"]->Option.getExn
        let content = content->Array.getUnsafe(index)
        switch field {
        | "id" => expect(content.id).toBe(value)
        | "title" => expect(content.title).toBe(value)
        | "kind" => expect(content.kind).toBe(value->S.parseOrThrow(Stack.stackTypeSchema))
        | "level" => expect(content.level).toBe(value->S.parseOrThrow(Stack.levelSchema))
        | "course" => expect(content.course).toBe(value)
        | "chapter" => expect(content.chapter).toBe(value)
        | "tags" => {
            let tags = value->String.split(",")->Array.map(String.trim)
            expect(content.tags).toEqual(tags)
          }
        | _ => Js.Exn.raiseError("Unknown field: " ++ field)
        }
      },
    )
  })
})
