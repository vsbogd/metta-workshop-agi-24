; MeTTa interpreter evaluates arguments before passing them to the function.
; Sometimes such behavior is not desirable. In such case one can use atom
; meta-types to prevent evaluaton.

; some function
(= (foo $x) $x)

(= (first ($fst $snd)) $fst)

; the goal is to get the first atom from pair but (foo ok) is evaluated before
; passing to the first function
!(first (foo ok))
; [(first ok)]

; using Atom as an argument type prevents argument from evaluation
(: first (-> Atom Atom))

!(first (foo ok))
; [foo]

; There are five meta-types: Atom, Expression, Symbol, Variable, Grounded
; other meta-types can be used to restrict input as usual types
(= (last $expr) 
  (case (quote $expr) (
    ((quote ()) (Error $expr "Non-empty expression is expected"))
    ((quote ($item)) $item)
    ($_ (let $tail (cdr-atom $expr) (last $tail)))
  )))

;!(last (if True Ok Nok))
; [(Error (cdr-atom Ok) "cdr-atom expects a non-empty expression as an argument")]

(: last (-> Expression Atom))
!(last (if True Ok Nok))
; [Nok]
