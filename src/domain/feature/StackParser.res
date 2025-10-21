let contentRe = RegExp.fromStringWithFlags("^(.*?)\\s*<details>", ~flags="s")
let solutionRe = RegExp.fromString("[\\s\\S]*?<summary>.*?</summary>([\\s\\S]*?)</details>")

let makeId = () => {
  let idx = ref(0)
  () => {
    idx := idx.contents + 1
    idx.contents->Int.toString
  }
}

let getOptions = content => {
  let id = makeId()
  let options: array<Card.qoption> = []
  let rest: array<string> = []
  content
  ->String.split("\n")
  ->Array.forEach(l => {
    if l->String.startsWith("- [x]") {
      options->Array.push({id: id(), text: l->String.sliceToEnd(~start=5), correct: true})
    } else if l->String.startsWith("- [ ]") {
      options->Array.push({id: id(), text: l->String.sliceToEnd(~start=5), correct: true})
    } else {
      rest->Array.push(l)
    }
  })
  (rest->Array.join("\n"), options)
}

let parseCards = (stackId, body): array<Card.t> => {
  let id = makeId()
  body
  ->String.split("\n---\n")
  ->Array.map(String.trim)
  ->Array.filter(s => s !== "" && !(s->String.startsWith("# ")) && !(s->String.startsWith("## ")))
  ->Array.map(text => {
    let (content, text) = switch contentRe->RegExp.exec(text) {
    | None => {
        Js.log("Cannot extract content\n==================")
        Js.log(text)
        Js.log("==================")
        raise(Invalid_argument("Cannot extract content"))
      }
    | Some(r) => (
        r[1]->Option.getUnsafe->Option.getUnsafe,
        text->String.sliceToEnd(~start=r->RegExp.Result.fullMatch->String.length),
      )
    }

    let (content, options) = getOptions(content)

    let (solution, _) = switch solutionRe->RegExp.exec(text) {
    | None => {
        Js.log("Cannot extract solution\n==================")
        Js.log(text)
        Js.log("==================")
        raise(Invalid_argument("Cannot extract solution"))
      }
    | Some(r) => (
        r[1]->Option.getUnsafe->Option.getUnsafe,
        text->String.sliceToEnd(~start=r->RegExp.Result.fullMatch->String.length),
      )
    }

    {
      Card.id: id(),
      stackId,
      content,
      solution,
      options,
    }
  })
}

let parse = (content: string): Stack.t => {
  let {data, content} = GrayMatter.parse(content)
  let info = S.parseOrThrow(data, Stack.infoSchema)
  {info, cards: parseCards(info.id, content)}
}
