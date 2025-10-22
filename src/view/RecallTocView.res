open TiliaReact

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

// Helper functions
let translateLevel = (level: Stack.level) => {
  switch level {
  | Stack.Regular => "Parcours doux"
  | Stack.Pro => "Parcours intensif"
  }
}

let translateType = (stackType: Stack.stackType) => {
  switch stackType {
  | Stack.Cards => "Fiches de révision"
  | Stack.Quiz => "Quiz"
  }
}

module ChapterProgress = {
  @react.component
  let make = (~chapter: RecallToc.pstack) => {
    useTilia()
    let {setActive} = App.app.toc

    switch chapter.prog {
    | Loading => <span> {"Loading..."->React.string} </span>
    | NotStarted =>
      <input type_="checkbox" checked={false} onChange={_ => setActive(chapter.info.id, true)} />
    | Started(prog) =>
      <input
        type_="checkbox"
        checked={prog.active}
        onChange={_ => setActive(chapter.info.id, !prog.active)}
      />
    }
  }
}

module ChapterItem = {
  @react.component
  let make = (~chapter: RecallToc.pstack) => {
    useTilia()

    <li key={chapter.info.id}>
      <a href={chapter.info.chapter}>
        <span className="toggle">
          <ChapterProgress chapter />
        </span>
        <span className="emoji"> {chapter.info.kind->Stack.stackTypeToEmoji->React.string} </span>
        {" "->React.string}
        {chapter.info.chapter->React.string}
      </a>
    </li>
  }
}

module CourseGroup = {
  @react.component
  let make = (~courseGroup: group<RecallToc.pstack, string>, ~level: Stack.level) => {
    useTilia()
    <section className="course" key={courseGroup.key}>
      <h4>
        <a href={`/${courseGroup.key}#${level->Stack.levelToString}`}>
          {courseGroup.key->React.string}
        </a>
      </h4>
      <ul>
        {courseGroup.list
        ->Array.map(chapter => <ChapterItem chapter key={chapter.info.id} />)
        ->React.array}
      </ul>
    </section>
  }
}

module TypeGroup = {
  @react.component
  let make = (~typeGroup: group<RecallToc.pstack, Stack.stackType>, ~level: Stack.level) => {
    <section className="type" key={typeGroup.key->Stack.stackTypeToString}>
      <h3>
        <a
          href={`/#${typeGroup.key->Stack.stackTypeToString}`}
          id={typeGroup.key->Stack.stackTypeToString}>
          <span className="emoji"> {typeGroup.key->Stack.stackTypeToEmoji->React.string} </span>
          {" "->React.string}
          {typeGroup.key->translateType->React.string}
        </a>
      </h3>
      {typeGroup.list
      ->partition(v => v.info.course)
      ->Array.map(courseGroup => <CourseGroup courseGroup level key={courseGroup.key} />)
      ->React.array}
    </section>
  }
}

module LevelGroup = {
  @react.component
  let make = (~levelGroup: group<RecallToc.pstack, Stack.level>) => {
    <section
      className="level"
      id={levelGroup.key->Stack.levelToString}
      key={levelGroup.key->Stack.levelToString}>
      <h2 className={levelGroup.key->Stack.levelToString}>
        {levelGroup.key->translateLevel->React.string}
      </h2>
      {levelGroup.list
      ->partition(v => v.info.kind)
      ->Array.map(typeGroup =>
        <TypeGroup typeGroup level={levelGroup.key} key={typeGroup.key->Stack.stackTypeToString} />
      )
      ->React.array}
    </section>
  }
}

@react.component @genType
let make = () => {
  useTilia()
  let {toc} = App.app

  // Group by level first
  let levelGroups = toc.stacks->partition(v => v.info.level)

  <nav ariaLabel="Table des matières" className="toc">
    {levelGroups
    ->Array.toSorted((a, b) => {
      // Sort levels: Regular (0) before Pro (1)
      let levelOrder = level =>
        switch level {
        | Stack.Regular => 0.
        | Stack.Pro => 1.
        }
      levelOrder(a.key) -. levelOrder(b.key)
    })
    ->Array.map(levelGroup => <LevelGroup levelGroup key={levelGroup.key->Stack.levelToString} />)
    ->React.array}
  </nav>
}
