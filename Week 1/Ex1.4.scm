#lang scheme

(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

; If b is +, b is added to a.
; If b is -, b is subtracted from a, which means it adds |b| to a.