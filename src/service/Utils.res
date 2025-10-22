type group<'a, 'b> = {
  key: 'b,
  list: array<'a>,
}

let partition = (list: array<'a>, predicate: 'a => 'b) => {
  let map = Map.make()
  list->Array.forEach(item => {
    let key = predicate(item)
    let list = switch map->Map.get(key) {
    | None => []
    | Some({list}) => list
    }
    list->Array.push(item)
    map->Map.set(key, {key, list})
  })
  map->Map.values->Iterator.toArray
}
