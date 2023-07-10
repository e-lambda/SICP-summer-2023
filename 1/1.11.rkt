#lang racket

(define (f n)
  (if (< n 3) n (+
                 (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))
                 )))

(define (g n)
  (define (iter i fn-1 fn-2 fn-3)
    (define fn (+ fn-1 (* 2 fn-2) (* 3 fn-3)))
    (if (= i n) fn (iter (+ i 1) fn fn-1 fn-2)))
  (if (< n 3) n (iter 3 2 1 0)))

(f 8)
(g 8)
