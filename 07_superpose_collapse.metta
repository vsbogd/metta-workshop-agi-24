(= (color) green)
(= (color) yellow)
(= (color) red)

; superpose converts expression into non-deterministic result

!(color)
!(superpose (red yellow green))
!(assertEqual
   (color)
   (superpose (red yellow green)))

; collapse converts non-deterministic result into an expression

!(color)
!(collapse (color))

; superpose reverts collapse

!(assertEqual
  (color)
  (let $x (collapse (color)) (superpose $x)))

