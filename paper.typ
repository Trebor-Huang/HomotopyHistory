#set page(margin: 1.5in)
#set text(font: ("New Computer Modern", "Source Han Serif SC"), size: 12pt, weight: 400)
#set par(justify: true, leading: 0.8em)
#show emph: it => [
  #set text(font: ("New Computer Modern", "Kaiti SC"), style: "italic")
  #it.body]
#show heading: it => (
  v(10pt) +
  block(width: 100%, above: 1.3em, below: 1em)[
    #set align(center)
    #set text(15pt)
    #it.body])
#show heading.where(
  level: 1
): it => (
  pagebreak(to: "odd") +
  block(width: 100%, below: 1.5em)[
    #set align(center)
    #set text(24pt)
    #it.body])

// Title page

#include("frontpage.typ")

// Contents

#show outline.entry.where(
  level: 1
): it => {
  v(1.5em, weak: true)
  strong(it, delta: 400)
}
#show outline.entry.where(
  level: 2
): it => {
  text(fill: color.lighten(black, 40%), it)
}
#outline(title: "目录", fill: none, depth: 2, indent: 1em)

#[
#v(1fr)#h(1fr)
_由_ Typst _排版_.
]

// Main matter
#set par(first-line-indent: 1.8em)
#set page(numbering: "1")
#counter(page).update(1)
#include("intro.typ")

#include("beginnings.typ")

#include("algtop.typ")

#include("homology.typ")

#include("category.typ")

#include("infcat.typ")

// #include("prospect.typ")

#bibliography(title: "参考文献", "references.bib")
