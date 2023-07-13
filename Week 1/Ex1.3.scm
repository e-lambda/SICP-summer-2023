#lang scheme

(define (squaresum a b)(+ (* a a) (* b b)))
(define (big a b c)
  (cond ((and (>= (+ a b) (+ a c)) (>= (+ a b) (+ b c)))(squaresum a b))
        ((and (>= (+ a c) (+ a b)) (>= (+ a c) (+ b c)))(squaresum a c))
        (else (squaresum b c))))
        
                                                        