#lang sicp

; Exercise 1.2
; Translate the following expression into prefix form.
; (5 + 4 + ( 2 − ( 3 − ( 6 + 4/5 ) ) ) ) /  ( 3 ( 6 − 2 ) ( 2 −7 ) )

  (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
     (* 3 (- 6 2) (- 2 7)) )

; Answer = -37/150
