(= (return-error) (Error (return-error) "Some error message"))
!(return-error)
; [(Error (return-error) "Some error message")]


!(case (match &self (no such atom) (something found)) (
  ((something found) (found))
  (Empty (not found))
  ))
; [(not found)]

(= (foo $x) NotReducible)

!(foo a)
; [(foo a)]
