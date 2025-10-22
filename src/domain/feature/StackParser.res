let contentRe = %re("/^(.*?)\s*<details>/s")
let solutionRe = %re("/[\s\S]*?<summary>.*?<\/summary>([\s\S]*?)<\/details>/")

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
      options->Array.push({
        id: id(),
        content: l->String.sliceToEnd(~start=5)->String.trim,
        correct: true,
      })
    } else if l->String.startsWith("- [ ]") {
      options->Array.push({
        id: id(),
        content: l->String.sliceToEnd(~start=5)->String.trim,
        correct: false,
      })
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
        Js.Exn.raiseError("Cannot extract content")
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
        Js.Exn.raiseError("Cannot extract solution")
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
  let cards = parseCards(info.id, content)
  {info: {...info, count: Some(cards->Array.length)}, cards}
}

let pathRe = %re("/(\.cards|\.quiz)$/")

let makeStacksToJson = (fs: SystemType.fs, path: SystemType.path, stacksDir: string) => {
  Js.log3("============", stacksDir, "==============")
  if !fs.existsSync(stacksDir) {
    fs.mkdirSync(stacksDir)
  }
  let rec aux = (dir: string) => {
    let toc = []
    fs.readdirSync(dir)->Array.forEach(dirent => {
      if dirent.name->String.endsWith(".cards") || dirent.name->String.endsWith(".quiz") {
        let p = path.join(dir, dirent.name)
        let stack = parse(fs.readFileSync(p, "utf-8"))
        toc->Array.push(stack.info)
        let json =
          stack
          ->S.reverseConvertOrThrow(Stack.stackSchema)
          ->JSON.stringifyAny(~space=2)
          ->Option.getExn
        fs.writeFileSync(path.join(stacksDir, `${stack.info.id}.json`), json, "utf-8")
      } else if dirent.isDirectory() {
        // Add elements of toc to the current toc
        toc->Array.pushMany(aux(path.join(dir, dirent.name)))
      }
    })
    if toc->Array.length > 0 {
      let json =
        toc
        ->S.reverseConvertOrThrow(Stack.tocSchema)
        ->JSON.stringifyAny(~space=2)
        ->Option.getExn
      fs.writeFileSync(path.join(dir, "stacks-toc.json"), json, "utf-8")
    }
    toc
  }
  aux
}
