#lang sicp

(define (square x) (* x x))
; To suare something multiply it by itself
; Syntax: (define (<name> <formal param>) <body>)

(square 11)
; 121

(square (+ 2 5))
; 49

(square (square 3))
; 81

(define (sum-of-squares x y) 
    (+ (square x) (square y))
)

(sum-of-squares 3 4)
; 25

(define (f a)
    (sum-of-squares (+ a 1) (* a 2))
)

(f 5)
; 136