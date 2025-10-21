open VitestBdd
open Stack

// External bindings for reading fixture files
@module("node:fs") external readFileSync: (string, string) => string = "readFileSync"
@module("node:path") external join: (string, string) => string = "join"
@val external processCwd: unit => string = "process.cwd"

let fixtures = join(processCwd(), "src/domain/test/fixtures")

let readFixture = filename => readFileSync(join(fixtures, filename), "utf8")

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
