; Exercise 1.4
; 
; Observe that our model of evaluation allows for combinations whose operators 
; are compound expressions. Use this observation to describe the behavior of the 
; following procedure:
; 
; (define (a-plus-abs-b a b)
;   ((if (> b 0) + -) a b))
; 
; ==============================================================================

; The body of this procedure is a combination whose operator is itself an if-
; statement. If b > 0, the operator will be "+". Otherwise, it will be "-", in 
; this way ensuring that a is summed with the absolute value of b.