#lang sicp


; Exercise 1.1

10
; 10

(+ 5 3 4)
; 12

(- 9 1)
; 8

(/ 6 2)
; 3

(+ (* 2 4) (- 4 6))
; 6

(define  a 3)
; a == 3

(define b (+ a 1))
; b == 4

(+ a b (* a b))
; 19

(= a b)
; false

(if (and (> a b) (< b (* a b))) 
    a 
    b)
; 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
; 16

(+ 2 (if (> b a) b a))
; 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
    (+ a 1))
; 16


; Excercise 1.2

(/ (+ 5 
      4
      (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 
      (- 6 2)
      (- 2 7)))
; -37/150


; Exercise 1.3
; Divide procedures into smaller procedures

(define (square x) (* x x))

(define (sumsquare x y) (+ (square x) (square y)))

(define (f a b c) 
        (cond ((and (>= a c) (>= b c)) (sumsquare a b))
              ((and (>= b a) (>= c a)) (sumsquare b c))
              ((and (>= a b) (>= c b)) (sumsquare a c))))

(f 1 3 5)
; 34


; Exercise 1.4

(define (a-plus-abs-b a b)
        ((if (> b 0) + -) a b))

(a-plus-abs-b 3 3)
; 6

(a-plus-abs-b 3 -3)
; 6


; Exercise 1.5
; NEVER ENDS!!! P EXPANDS ITSELF!!!

(define (p) (p))

(define (test x y)
        (if (= x 0)
             0
             y))

;;; (test 0 (p))


; Exercise 1.6
; new-if is procedure, and scheme interpreter will evaluate all arguments and it will never end


; Exercise 1.7

;;; (define (average x y)
;;;         (/ (+ x y) 2))

;;; (define (improve guess x)
;;;         (average guess (/ x guess)))

;;; (define (isenough guess prevguess)
;;;         (< (abs (- guess prevguess)) 1e-10))

;;; (define (sqrt-iter guess prevguess x)
;;;         (if (isenough guess prevguess) 
;;;             guess
;;;             (sqrt-iter (improve guess x) 
;;;                        guess 
;;;                        x)))

;;; (define (sqrt x)
;;;         (sqrt-iter 1.0 0.0 x))

;;; (sqrt 0.0001)
;;; (sqrt 100000000)
;;; (sqrt 3)


; Exercise 1.8

(define (isenough guess prevguess)
        (< (abs (- guess prevguess)) 1e-10))

(define (improve guess x)
        (/ (+ (/ x 
              (square guess)) 
              (* 2 guess)) 3))

(define (cbrt-iter guess prevguess x)
        (if (isenough guess prevguess) 
            guess
            (cbrt-iter (improve guess x) guess x)))

(define (cbrt x)
        (cbrt-iter 1.0 0.0 x))

(cbrt 27)