#lang racket

(define (f a b c)
  (cond ((and (< a b) (< a c)) (+ (* b b) (* c c)))
        ((and (< b a) (< b c)) (+ (* a a) (* c c)))
        (else (+ (* a a) (* b b)))
        ))

(f 1 1 1) ; 1 + 1
(f 1 2 2) ; 4 + 4
(f 2 1 2) ; 4 + 4
(f 1 2 3) ; 9 + 4
(f 3 2 1) ; 9 + 4