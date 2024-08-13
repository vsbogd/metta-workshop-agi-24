; match, let and unify

(implies (Frog $x) (Green $x))
(implies (Frog $x) (Eats-flies $x))

; match queries atomspace, returns Empty if no match

!(match &self (implies (Frog Sam) $what) $what)
; [(Eats-flies Sam), (Green Sam)]

!(match &self (implies (Cat Tom) $what) $what)
; []

; let unifies two atoms, returns Empty if no match

!(let (Sam is $what) ($who is green) ($who is $what))
; [(Sam is green)]

!(let ($who is a frog) (Tom is a cat) ($who is a cat))
; []

!(let &self (implies (Frog Sam) $what) $what)
; [(Eats-flies Sam), (Green Sam)]

!(let &self (implies (Cat Tom) $what) $what)
; []

; unify matches two atoms, handles no results situation

!(unify (Sam is $what) ($who is green) ($who is $what) (no match))
; [(Sam is green)]

!(unify ($who is a frog) (Tom is a cat) ($who is a cat) (no match))
; [(no match)]

!(unify &self (implies (Frog Sam) $what) $what (no match))
; [(Eats-flies Sam), (Green Sam)]

!(unify &self (implies (Cat Tom) $what) $what (no match))
; [(no match)]
