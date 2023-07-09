#lang sicp

; Exercise 1.4:
;
; Observe that our model of evaluation allows for combinations whose operators are compound expressions.
; Use this observation to describe the behavior of the following procedure:
;
;
; (define (a-plus-abs-b a b)
;  ((if (> b 0) + -) a b))


;;; --------------------------ANSWER:--------------------------------

; The operator to be used depends on the evaluation of the if predicate.
; If b is greater than 0, the operator will be +, otherwise it will be - .
; This ensures that a will always be added with the absolute value of b.