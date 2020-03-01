#lang sicp

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

; (cond (predicate1 expression1) ... (predicateN expressionN))

(abs 2)
(abs 0)
(abs -1)

(set! abs (lambda (x)
  (cond ((< x 0)(- x))
        (else x))))

(abs 2)
(abs 0)
(abs -1)

(set! abs (lambda (x) 
    (if (< x 0)
        (- x)
        x)))

(abs 2)
(abs 0)
(abs -1)