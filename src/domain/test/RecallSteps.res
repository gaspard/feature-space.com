open VitestBdd
open Recall

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
    let cprog: option<CardProgress.t> = switch record["recall"] {
    | None => None
    | Some("") => None
    | Some(recall) =>
      Some({
        recall: recall->Float.fromString->Option.getExn,
        timestamp: 0., // not used
        state: Good, // not used
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
      nextRecall(pair->Dict.valuesToArray, ~max=nb->Float.toInt, ~now=1000.)
      ->Array.toSorted((a, b) => a.id->String.compare(b.id))
      ->Array.map(card => card.id)
    expect(nextRecall).toEqual(cards)
  })
})
