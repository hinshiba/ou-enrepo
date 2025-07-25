// Copyright (c) 2025 hinshiba.
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

#let enrepo = (
  // title
  title: "Main Title",
  subtitle: "Sub Title",
  author: "hinshiba",
  // format
  size: 12pt,
  font: "New Computer Modern",
  paper: "a4",
  body,
) => {
  // metadata
  [
    #metadata(title)<title>
    #metadata(subtitle)<subtitle>
    #metadata(author)<author>
  ]

  // doc
  set document(title: title, author: author)
  set page(paper: paper)
  set text(hyphenate: true, lang: "en", size: size, font: font)
  set par(spacing: 1em, first-line-indent: (amount: 2em, all: true), justify: true)

  // heading
  show heading: set text(size: size, weight: "bold")
  show heading: set block(below: 0.8em, above: 1.5em)

  // title
  align(center)[
    #par(text(1em + 2pt, strong[#title]))
    #v(-2pt)
    #if subtitle != none {
      par(text(1em, [#subtitle]))
    }
    #par(text(1em, [#author]))
  ]

  body
}
