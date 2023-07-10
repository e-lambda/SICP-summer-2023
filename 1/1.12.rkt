#lang racket

(define (pascal i j)
  (cond ((< j 0) 0)
        ((> j i) 0)
        ((= i 0) 1)
        (else (+ (pascal (- i 1) (- j 1)) (pascal (- i 1) j)))))

(define (pyramid n)
  (define (inner i j)
    (display (pascal i j))
    (if (>= j i) 1 (inner i (+ j 1))))
  (define (outer i)
    (inner i 0)
    (newline)
    (if (>= i n) void (outer (+ i 1))))
  (outer 0))

(pyramid 4)
