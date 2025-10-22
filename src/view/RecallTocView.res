open TiliaReact

module StackItem = {
  @react.component
  let make = (~item: RecallToc.pstack) => {
    useTilia()
    let {info, prog} = item
    <div className="grid grid-cols-subgrid" key={info.id}>
      <span> {info.kind->Stack.stackTypeToEmoji->React.string} </span>
      <span> {info.chapter->React.string} </span>
      <span> {info.course->React.string} </span>
    </div>
  }
}

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

@react.component @genType
let make = () => {
  useTilia()
  let {toc} = App.app

  let groups = toc.stacks->partition(v => v.info.level)

  groups
  ->Array.map(group =>
    <div key={group.key->Stack.levelToString}>
      <h1> {group.key->Stack.levelToString->React.string} </h1>
      <div className="grid grid-cols-[0_fr_1fr_2fr] gap-2">
        {group.list
        ->Array.map(item => <StackItem item key={item.info.id} />)
        ->React.array}
      </div>
    </div>
  )
  ->React.array
}

<nav aria-label="Table des matières" class="toc">
  {
    Object.entries(grouped)
      .sort(([a], [b]) => {
        const levelA = parseInt(a.split("-")[1])
        const levelB = parseInt(b.split("-")[1])
        return levelA - levelB
      })
      .map(([levelKey, types]) => {
        const level = levelKey.split("-")[1]
        return (
          <section class="level" id={level}>
            <h2 class={level}>{translateLevel(level)}</h2>

            {Object.entries(types).map(([typeKey, courses]) => {
              const type = typeKey.split("-")[1]
              return (
                <section class="type">
                  <h3>
                    <a href={`/#${type}`} id={type}>
                      <span class="emoji">{itemEmoji(type)}</span>{" "}
                      {translateType(type)}
                    </a>
                  </h3>

                  {Object.entries(courses).map(([courseKey, chapters]) => {
                    const course = courseKey.split("-")[1]
                    return (
                      <section class="course">
                        <h4>
                          <a href={coursePath(chapters, level)}>{course}</a>
                        </h4>
                        <ul>
                          {chapters.map((chapter) => (
                            <li>
                              <a href={chapter.path}>
                                <span class="emoji">
                                  {itemEmoji(chapter.type)}
                                </span>{" "}
                                {chapter.chapter}
                              </a>
                            </li>
                          ))}
                        </ul>
                      </section>
                    )
                  })}
                </section>
              )
            })}
          </section>
        )
      })
  }
</nav>
