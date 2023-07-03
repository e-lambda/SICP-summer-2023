; Exercise 1.2
; 
; Translate the following expression into prefix form:
; 
; (5 + 4 + (2 - (3 - (6 + 4 / 5)))) / (3 * (6 - 2) * (2 - 7))
; 
; ==============================================================================
;
; It helps to draw out the expression tree on a sheet of paper.

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))
;Value: -37/150