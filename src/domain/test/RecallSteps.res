open VitestBdd
open Recall

// Stable "shuffle" for testing
let shuffle = (array: array<Card.t>) => {
  array->Array.sort((a, b) => a.id->String.compare(b.id))
}

let mockRepo: RepositoryType.t = {
  stack: {
    toc: async (_path: string) => {
      []
    },
    get: async (_id: string) => {
      None
    },
  },
  progress: {
    get: async (_id: string) => {
      None
    },
    save: async (_progress: Stack.progress) => {
      ()
    },
  },
  settings: {
    get: (_key: string) => {
      null
    },
    save: (_key: string, _value: string) => {
      ()
    },
  },
}

given("stacks", ({step}, table) => {
  let pair = Dict.make()

  toRecords(table)->Array.forEach(record => {
    let stackId = record["stackId"]->Option.getExn
    let id = record["id"]->Option.getExn
    let card: Card.t = {
      id,
      stackId,
      content: "",
      solution: "",
      options: [],
    }
    let cprog: option<CardProgress.t> = switch record["timestamp"] {
    | None => None
    | Some("") => None
    | Some(timestamp) =>
      Some({
        timestamp: timestamp->Float.fromString->Option.getExn,
        state: record["state"]->Option.getExn->CardProgress.ofString,
      })
    }
    switch pair->Dict.get(stackId) {
    | None => {
        let stack: Stack.t = {
          info: {
            id: stackId,
            title: "",
            kind: Cards,
            level: Regular,
            chapter: "",
            course: "",
            tags: [],
            count: None,
          },
          cards: [card],
        }
        let prog: Stack.progress = {id: stackId, active: true, cards: Dict.make()}
        switch cprog {
        | None => ()
        | Some(cprog) => prog.cards->Dict.set(id, cprog)
        }
        pair->Dict.set(stackId, {stack, prog})
      }
    | Some({stack, prog}) => {
        stack.cards->Array.push(card)
        switch cprog {
        | None => ()
        | Some(cprog) => prog.cards->Dict.set(id, cprog)
        }
      }
    }
  })

  step("the next recall for {number} cards should be", (nb, table) => {
    let cards = toStrings(table)
    let nextRecall =
      nextRecall(
        pair->Dict.valuesToArray,
        ~max=nb->Float.toInt,
        ~now=1000.,
        ~shuffle,
        ~dayLength=100.,
      )->Array.map(card => card.id)
    expect(nextRecall).toEqual(cards)
  })

  step("the next cards for {number} cards should be", (nb, table) => {
    let cards = toRecords(table)
    let recall = Recall.make(
      mockRepo,
      pair->Dict.valuesToArray,
      ~shuffle,
      ~now=() => 1000.,
      ~max=nb->Float.toInt,
      ~dayLength=100.,
    )
    cards->Array.forEachWithIndex(
      (card, i) => {
        let check = (expected: int, actual: int) =>
          expect((i + 1)->Int.toString ++ ": " ++ expected->Int.toString).toBe(
            (i + 1)->Int.toString ++ ": " ++ actual->Int.toString,
          )
        let id = card["id"]->Option.getExn
        let toRecall = card["toRecall"]->Option.getExn->Float.toInt
        let stackCount = card["stackCount"]->Option.getExn->Float.toInt
        check(recall.stats.toRecall, toRecall)
        check(recall.stats.stackCount, stackCount)
        if id == "none" {
          expect(recall.card).toBe(None)
        } else {
          let eval = card["eval"]->Option.getExn
          switch recall.card {
          | None => expect(None).toBe(Some(id))
          | Some(card) => {
              expect(card.id).toBe(id)
              recall.evaluate(eval->CardProgress.ofString)
            }
          }
        }
      },
    )
  })
})
