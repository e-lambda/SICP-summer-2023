#lang sicp

; Exercise 1.1.2
; Below is a sequence of expressions.
; What is the result printed by the interpreter
; in response to each expression? Assume that the sequence is to be
; evaluated in the order in which it is presented.

(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)

;19
;#f
