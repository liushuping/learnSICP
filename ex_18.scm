#lang scheme

(define (sqrt3-iter guess x)
  (if (good-enough? guess x)
   guess
  (sqrt3-iter (improve guess x)
	       x)))

(define (improve guess x)
  (/ (+ (/ x
	   (* guess guess))
        (* 2 guess))
     3))

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.001))

(define (sqrt3 x)
  (sqrt3-iter 2.0 x))
       
(sqrt3 9)
(sqrt3 27)
(sqrt3 81)
(sqrt3 64)
