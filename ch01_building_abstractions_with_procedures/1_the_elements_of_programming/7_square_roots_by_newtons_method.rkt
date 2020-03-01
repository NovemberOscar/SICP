#lang sicp

(define (average x y)
        (/ (+ x y) 2))

(define (improve guess x)
        (average guess (/ x guess)))

(define (isenough guess x)
        (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
        (if (isenough guess x) 
            guess
            (sqrt-iter (improve guess x) x)))

(define (sqrt x)
        (sqrt-iter (/ x 2.0) x))

(sqrt 2)
(sqrt 4)
(sqrt 3)