#set page(margin: 1.5in)
#set text(font: ("New Computer Modern", "Songti SC"), size: 12pt)
#set par(justify: true, leading: 0.8em, first-line-indent: 1.8em)
#show heading: it => (
  v(10pt) +
  block(width: 100%, above: 1.4em, below: 1em)[
    #set align(center)
    #set text(15pt)
    #it.body
  ]
)
#show heading.where(
  level: 1
): it => (
  pagebreak(to: "odd") +
  block(width: 100%, below: 1em)[
    #set align(center)
    #set text(24pt)
    #it.body
  ]
)

// Title page

#block(width: 100%)[
#set align(center)
#set text(36pt)
*同伦论简史*

(封面页)
]


// Contents

#outline(title: "目录", fill: none, depth: 2, indent: 1em)

// Main matter
#set page(numbering: "1")
#counter(page).update(1)
#include("intro.typ")

#include("beginnings.typ")

#include("algtop.typ")

// #include("homology.typ")

// #include("category.typ")

// #include("infcat.typ")

// #include("prospect.typ")

#bibliography(title: "参考文献", "references.bib")
