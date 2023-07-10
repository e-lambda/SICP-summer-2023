#lang sicp

; Exercise 1.4
; Observe that our model of evaluation allows for
; combinations whose operators are compound expressions.
; Use this observation to describe the behavior of the following procedure:

(define (mystery a b)
  ((if (> b 0) + -) a b))

; Describe the behavior of the procedure by selecting
; which descriptions are equivalent.
; If you think that the procedure definition is invalid, choose the reasons why.


;Answer
; The mystery procedure checks to see if b > 0. If true
; It adds (a + b)
; Else it subtracts a and b => a - -b => a + b
