#lang sicp

;;; (define (square x) (* x x))
;;; (square 2)
; 4

(define (double x) (+ x x))
(define (square x) (exp (double (log x))))
(square 2)
; 4.0

(define (f x) x)
(define (d x) x)
(f 1)
(d 1)
; each x is local name so not affect to other procedures


; Internal definitions and block structure

(define (average x y)
        (/ (+ x y) 2))

;;; (define (sqrt x) 
;;;     (define (isenough guess x)
;;;         (< (abs (- (square guess) x)) 0.001))
;;;     (define (improve guess x)
;;;         (average guess (/ x guess)))
;;;     (define (sqrt-iter guess x)
;;;         (if (isenough guess x)
;;;             guess
;;;             (sqrt-iter (improve guess x) x)))

;;;     (sqrt-iter 1.0 x))

(define (sqrt x) ; use bound variable in block
    (define (isenough guess)
        (< (abs (- (square guess) x)) 0.001))
    (define (improve guess)
        (average guess (/ x guess)))
    (define (sqrt-iter guess)
        (if (isenough guess)
            guess
            (sqrt-iter (improve guess))))

    (sqrt-iter 1.0))

(sqrt 4)
(sqrt 2)
(sqrt 3)

; Exercise with Cube Root
(define (cbrt x) ; use bound variable in block
    (define (isenough guess prevguess)
        (< (abs (- guess prevguess)) 1e-10))
    (define (improve guess)
        (/ (+ (/ x 
              (square guess)) 
              (* 2 guess)) 3))
    (define (cbrt-iter guess prevguess)
        (if (isenough guess prevguess)
            guess
            (cbrt-iter (improve guess) guess)))

    (cbrt-iter 1.0 0.0))

(cbrt 27)
(cbrt 3)
