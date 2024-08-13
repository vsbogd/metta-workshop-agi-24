(: Nat Type)
(: Z Nat)
(: S (-> Nat Nat))

; type for the vector having specific length
(: Vec (-> $t Nat Type))

; vector constructor which adds an element to the head
(: Cons (-> $t (Vec $t $n) (Vec $t (S $n))))
; empty Vec constructor
(: Nil (Vec $t Z))

; get-type can be used to see the type of the atom
!(get-type (Cons 0 (Cons 1 (Cons 2 Nil))))
; [(Vec Number (S (S (S Z))))]

; function drops vector's head returning tail
(: drop (-> (Vec $t (S $n)) (Vec $t $n)))
(= (drop (Cons $x $xs)) $xs)

!(get-type (drop (Cons 0 (Cons 1 Nil))))
; [(Vec Number (S Z))]

; drop is not applicable to Nil, ideally BadType error should be returned
!(get-type (drop Nil))
; []
