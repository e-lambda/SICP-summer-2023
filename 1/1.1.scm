; Exercise 1.1
; 
; Below is a sequence of expressions. What is the result printed by the 
; interpreter in response to each expression? Assume that the sequence is to be 
; evaluated in the order in which it is presented.
; 
; ==============================================================================
; 
; I ran these expressions in the Edwin "interaction window" by typing them out, 
; moving my cursor to the end, and typing C-x C-e.

10
;Value: 10

(+ 5 3 4)
;Value: 12

(- 9 1)
;Value: 8

(/ 6 2)
;Value: 3

(+ (* 2 4) (- 4 6))
;Value: 6

(define a 3)
;Value: a

(define b (+ a 1))
;Value: b

(+ a b (* a b))
;Value: 19

(= a b)
;Value: #f

(if (and (> b a) (< b (* a b)))
    b
    a)
;Value: 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;Value: 16

(+ 2 (if (> b a) b a))
;Value: 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;Value: 16

