#import "@preview/cetz:0.2.0"
#import "@preview/fletcher:0.4.0" as fletcher: node, edge
// #import "@preview/ctheorems:1.1.0": *
// #show: thmrules
// #let proof = thmplain(
//   "proof",
//   "证明",
//   base: "theorem",
//   bodyfmt: body => [#body #h(1fr) $square$]
// ).with(numbering: none)

#let slash = math.class("fence", sym.slash)
#let fork = math.class("relation", "⋔")
#let cap = math.class("binary", "⌢")
#let cup = math.class("binary", "⌣")

// Override calligraphic font
#let cal(t) = text(t, font: "KaTeX_Caligraphic")
