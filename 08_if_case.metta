; if checks condition and returns different arguments according to condition

!(get-type if)
; [(-> Bool Atom Atom $t#16)]

!(if True ok nok)
; [ok]

!(if False ok nok)
; [nok]

; case unifies atom with one of the alternatives, case handles empty result

(Tom is a cat)
(Sam is a frog)

!(case (match &self ($who is a cat) $who) (
  (Empty NotFound)
  ($who $who)
  ))
; [Tom]

!(case (match &self ($who is a lion) $who) (
  (Empty NotFound)
  ($who $who)
  ))
; [NotFound]
