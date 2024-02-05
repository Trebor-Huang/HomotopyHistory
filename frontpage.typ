#import "common.typ": *
#[
#set text(36pt)
*同伦论简史*\
#set text(18pt, font: "CMU Sans Serif")
A Brief History of Homotopy Theory
]
#place(bottom + center, dy: 1cm)[
#import cetz.draw: *
#set text(18pt)
#let ang(i) = 10deg - calc.cos(i*90deg) * 3deg
#cetz.canvas(length: 0.9cm,{
  circle((0,0), radius: 1.5, fill: black)
  content((0,0), text(32pt, fill: white, $K upright(O)$))

  content((0deg,5), $upright(O)$)
  content((45deg,5), $upright(O)\/upright(U)$)
  content((90deg,5), $upright(U)\/"Sp"$)
  content((135deg,5), $ZZ times B"Sp"$)
  content((180deg,5), $"Sp"$)
  content((-135deg,5), $"Sp"\/upright(U)$)
  content((-90deg,5), $upright(U)\/upright(O)$)
  content((-45deg,5), $ZZ times B upright(O)$)

  set-style(mark: (end: ">", fill: black))
  for i in range(8) {
    arc((0,0), start:ang(i) + 45deg * i, stop: 45deg - ang(i+1) + 45deg * i, radius: 5, anchor: "origin")
    content(((ang(i) - ang(i+1))/2 + 45deg * i + 22.5deg, 5.6), text(16pt, $Omega$))
  }

  circle((8.5,-5.5), radius: 1, fill: black)
  content((8.5,-5.5), text(32pt, fill: white, $SS$))

  content((8.5, -3.5), $0$)
  content((8.5, 0), $ZZ$)
  content((8.5, 3.5), $ZZ \/ 2 ZZ$)
  content((8.5, 7), $ZZ \/ 2 ZZ$)
  content((8.5, 10.5), $ZZ \/ 24 ZZ$)
  content((8.5, 14), $0$)
  content((8.5, 16.5), $dots.v$)
})
]

// Possibly add some deep words at the next page
