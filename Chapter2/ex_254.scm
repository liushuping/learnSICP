#lang scheme

(define (equal? x y)
  (cond ((null? x) (null? y))
	((null? y) (null? x))
	((eq? (car x) (car y)) (equal? (cdr x) (cdr y)))
	(else false)))

(equal? '(this is a list) '(this is a list))
(equal? '(this is a list) '(this (is a) list))
