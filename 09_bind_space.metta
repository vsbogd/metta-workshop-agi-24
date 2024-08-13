!(new-space)
; [GroundingSpace-0x6554b90b38c8]

(= (myspace) (new-space))
!(add-atom (myspace) A)
; [()]
!(get-atoms (myspace))
; []

!(bind! &myspace (new-space))
; [()]
!(add-atom &myspace (Frog Sam))
; [()]
!(add-atom &myspace (Cat Tom))
; [()]
!(get-atoms &myspace)
; [(Frog Sam), (Cat Tom)]
!(match &myspace ($pred $name) $name)
; [Sam, Tom]
!(remove-atom &myspace (Cat Tom))
; [()]
!(get-atoms &myspace)
; [(Frog Sam)]
