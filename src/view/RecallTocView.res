open TiliaReact
open Utils

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
  let make = (~chapter: RecallToc.tstack) => {
    useTilia()

    switch chapter.prog {
    | Loading => <span> {"Loading..."->React.string} </span>
    | NotStarted => <input type_="checkbox" checked={false} onChange={_ => ()} />
    | Started(prog) => <input type_="checkbox" checked={prog.active} onChange={_ => ()} />
    }
  }
}

module ChapterItem = {
  @react.component
  let make = (~chapter: RecallToc.tstack) => {
    useTilia()
    let {setActive} = App.app.toc

    let toggle = _ =>
      switch chapter.prog {
      | Loading => ()
      | NotStarted => setActive(chapter.info.id, true)
      | Started(prog) => setActive(chapter.info.id, !prog.active)
      }

    <li key={chapter.info.id} onClick={toggle}>
      <span className="toggle">
        <ChapterProgress chapter />
      </span>
      <span className="emoji"> {chapter.info.kind->Stack.stackTypeToEmoji->React.string} </span>
      {" "->React.string}
      {chapter.info.chapter->React.string}
    </li>
  }
}

module CourseGroup = {
  @react.component
  let make = (~courseGroup: group<RecallToc.tstack, string>) => {
    useTilia()
    <section className="course" key={courseGroup.key}>
      <h4> {courseGroup.key->React.string} </h4>
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
  let make = (~typeGroup: group<RecallToc.tstack, Stack.stackType>) => {
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
      ->Array.map(courseGroup => <CourseGroup courseGroup key={courseGroup.key} />)
      ->React.array}
    </section>
  }
}

module LevelGroup = {
  @react.component
  let make = (~levelGroup: group<RecallToc.tstack, Stack.level>) => {
    <section
      className="level"
      id={levelGroup.key->Stack.levelToString}
      key={levelGroup.key->Stack.levelToString}>
      <h2 className={levelGroup.key->Stack.levelToString}>
        {levelGroup.key->translateLevel->React.string}
      </h2>
      {levelGroup.list
      ->partition(v => v.info.kind)
      ->Array.map(typeGroup => <TypeGroup typeGroup key={typeGroup.key->Stack.stackTypeToString} />)
      ->React.array}
    </section>
  }
}

module Event = {
  let value = (e: ReactEvent.Form.t) => {
    ignore(e)
    let s: string = %raw(`e.target.value`)
    s
  }
}

@react.component
let make = () => {
  useTilia()
  let {toc} = App.app
  let {stats} = toc

  // Group by level first
  let levelGroups = toc.stacks->partition(v => v.info.level)

  <>
    <p>
      {"Séléctionnez les matières que vous souhaitez réviser et pressez sur start."->React.string}
    </p>
    <div className="stats">
      <span> {"à revoir"->React.string} </span>
      <span className="num"> {stats.toRecall->Int.toString->React.string} </span>
      <span> {"vues"->React.string} </span>
      <span className="num"> {stats.seen->Int.toString->React.string} </span>
      <span> {"nouvelles"->React.string} </span>
      <span className="num"> {stats.new->Int.toString->React.string} </span>
      <span> {"total"->React.string} </span>
      <span className="num"> {stats.total->Int.toString->React.string} </span>
    </div>
    <div className="settings">
      <span> {"base de répétition"->React.string} </span>
      <span> {(toc.dayLengthH->Float.toString ++ "h")->React.string} </span>
      <input
        type_="range"
        min="0"
        max="24"
        value={toc.dayLengthH->Float.toString}
        onChange={e => toc.setDayLength(Event.value(e)->Float.fromString->Option.getExn)}
      />
    </div>
    <button
      className="start" disabled={stats.toRecall + stats.new === 0} onClick={_ => App.app.start()}>
      {"Start"->React.string}
    </button>
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
  </>
}
