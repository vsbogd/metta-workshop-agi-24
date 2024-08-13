; Peano axioms
; 0 -> Z
; 1 -> (S Z)
; 2 -> (S (S Z))
; ...
; $n -> (S ($n - 1))

; simple function with only branch
(= (add1 $x) (S $x))

!(add1 Z)
; [(S Z)]
!(add1 (S Z))
; [(S (S Z))]

; simple function with two exclusive branches
(= (add $x Z) $x)
(= (add $x ($ $y)) (add (S $x) $y))

!(add (S (S Z)) (S (S (S Z))))
; [(S (S (S (S (S Z)))))]

; one more example
(= (from-peano Z) 0)
(= (from-peano (S $x)) (+ 1 (from-peano $x)))

!(from-peano (add (S (S Z)) (S (S (S Z)))))
; [5]

; function with two non-exclusive branches

; straightforward implementation goes into infinite loop
;(= (to-peano 0) Z)
;(= (to-peano $x) (S (to-peano (- $x 1))))

; correct implementation
(= (to-peano $x)
  (case $x (
    (0 Z)
    ($x (S (to-peano (- $x 1))))
  )))

!(to-peano 5)
; [(S (S (S (S (S Z)))))]

; non-deterministic function
(= (bin) 0)
(= (bin) 1)

!(bin)
; [0, 1] ; order is not specified

!((bin) (bin))
; [(0, 0), (0, 1), (1, 0), (1, 1)] ; order is not specified

