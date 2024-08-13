; MeTTa program consists of atoms added into the atomspace
; and expressions for evaluation prepended by '!'

; atomspace contents

Sophia ; a single symbol
(Tom is a cat) ; an expression
42 ; a grounded value
"text" ; a grounded value

; evaluated atoms

; match searches for the pattern passed as a second argument and returns
; template with variable's values matched by the pattern
!(match &self ($who is a $what) ($who the $what))
; [(Tom the cat)]

!(get-atoms &self)
;[GroundingSpace-top:stdlib, GroundingSpace-top:corelib, Sophia, (Tom is a cat), 42, "text"]

; double-sided matching

(Sam is a $who) ; a variable in the atomspace

!(match &self ($who is a frog) $who)
; [Sam]
