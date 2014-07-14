#lang scheme

(define (cons x y)
  (lambda (m) (m x y)))

(define (cdr z)
  (z (lambda (p q) q)))

(define p (cons 2 3))
(cdr p)
