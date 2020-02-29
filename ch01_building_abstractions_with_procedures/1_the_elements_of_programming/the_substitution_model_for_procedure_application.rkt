#lang sicp

#lang sicp

(define (square x) (* x x))

(define (sum-of-squares x y) 
    (+ (square x) (square y))
)

(define (f a)
    (sum-of-squares (+ a 1) (* a 2))
)

; now let's expand this expression
(f 5)

; f equals
; sum-of-squares (+ a 1) (* a 2))
(sum-of-squares (+ 5 1) (* 5 2))

; sum-of-squares equals
; (+ (square x) (square y))
(+ (square 6) (square 10))

; square equals
; (* x x)
(+ (* 6 6) (* 10 10))

; equals
(+ 36 100)

; equals
136