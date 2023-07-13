#lang scheme

(define (p) (p))
(define (test x y)
(if (= x 0) 0 y))

(test 0 (p))

; In applicative order, there will be no output as it keeps looping indefintely.
; In normal order, the output would become 0 when the values are sustituted.