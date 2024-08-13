; single argument function
(= (add1 $x) (S $x))

; applying function to the incorrect value
!(add1 1)
; [(S 1)]

; new type
(: Nat Type)

; type for the zero constant
(: Z Nat)

; type for the successor value constructor
(: S (-> Nat Nat))

; type for a single argument function
(: add1 (-> Nat Nat))

!(add1 (S Z))
; [(S (S Z))]

; if add1 has a type then passing argument of the incorrect type returns
; BadType error
;!(add1 1)
; [(Error 1 BadType)]

; 'a' has %Undefined% type, %Undefined% type always passes type check
!(add1 a)
; [(S a)]

; But if 'a' has a type then type check fails
(: a A)
;!(add1 a)
; [(Error a BadType)]
