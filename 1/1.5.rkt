#lang sicp
;Exercise 1.5
;In applicative order, the predicate and operands are evaluated first, and then the operators are used on arguments.
;In normal order, the interpreter would substitute operands for parameters until it finds an operand with only primitive operators.
;Given the above, there is no output in applicative order, and the output would be 0 in normal order.
(define (p) (p))
(define (test x y)
(if (= x 0) 0 y))