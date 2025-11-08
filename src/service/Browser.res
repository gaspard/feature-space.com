module Scroll = {
  type behavior =
    | @as("smooth") Smooth
    | @as("instant") Instant
  type scrollIntoViewOptions = {behavior: behavior}
}

type domElement = {scrollIntoView: Scroll.scrollIntoViewOptions => unit}
external getElementById: string => option<domElement> = "document.getElementById"

let scrollTo = (id, ~behavior=Scroll.Smooth) => {
  switch getElementById(id) {
  | Some(element) => element.scrollIntoView({behavior: behavior})
  | None => ()
  }
}
