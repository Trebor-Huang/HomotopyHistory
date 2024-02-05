#set page(paper: "iso-b5", margin: 1in)
#set text(font: ("New Computer Modern", "Source Han Serif SC"), size: 12pt, weight: 400)
#set par(justify: true, leading: 0.9em)
#show emph: it => [
  #set text(font: ("New Computer Modern", "Kaiti SC"), style: "italic")
  #it.body]
#show heading.where(level: 2): it => (
  v(10pt) +
  block(width: 100%, above: 1.3em, below: 1.5em)[
    #set align(center)
    #set text(15pt)
    #it.body])
#show heading.where(level: 1): it => (
  pagebreak(to: "odd") +
  block(width: 100%, below: 1.8em)[
    #set align(center)
    #set text(24pt)
    #it.body])

// Title page
#include("frontpage.typ")

// Contents
#set page(numbering: "i")
#counter(page).update(1)
#show outline.entry.where(
  level: 1
): it => {
  block(breakable: false)[
    #line(length: 101%, stroke: 0.7pt)
    #v(-0.6em)
    #place(line(
      start: (0cm, -0.61em),
      end: (0cm, 1.2em),
      stroke: 0.7pt
    ))
    #h(0.4em)
    #strong(it, delta: 200)
  ]
  v(-1.7em)
}
#outline(title: "目录", fill: none, depth: 2, indent: 1em)

#[
#v(1fr)#h(1fr)
_由_ Typst _排版_.
]

// Main matter
#set par(first-line-indent: 2em)
#show par: set block(spacing: 1.5em)
#set page(numbering: "1")
#counter(page).update(1)

#show heading: it => {
  it
  v(-1.5em)
  par()[#text(size:0em)[#h(0.0em)]]
}

#include("intro.typ")

#include("beginnings.typ")

#include("algtop.typ")

#include("homology.typ")

#include("category.typ")

#include("infcat.typ")

#include("prospect.typ")

#bibliography(title: "参考文献", "references.bib")
