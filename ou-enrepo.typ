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
  double_space: true,
  big_subtitles: true,
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
  set text(
    hyphenate: true,
    lang: "en",
    size: size,
    font: font,
    top-edge: if double_space { 0.7em } else {
      "cap-height"
    },
    bottom-edge: if double_space { -0.3em } else {
      "baseline"
    },
  )
  set par(spacing: 1em, first-line-indent: (amount: 2em, all: true), justify: true, leading: if double_space {
    1em
  } else {
    0.65em
  })

  // title
  align(center)[
    #par(text(1em + 2pt, strong[#title]))
    #v(-2pt)
    #if subtitle != none {
      par(text(1em + if (big_subtitles) { 2pt } else { 0pt }, [#subtitle]))
    }
    #par(text(1em + if (big_subtitles) { 2pt } else { 0pt }, [#author]))
  ]

  body
}
