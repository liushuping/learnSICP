#lang scheme

(define nil '())
(define x (list (list 1 2) (list 3 4)))

(define (deep-reverse l)
	(map reverse l))

(reverse (deep-reverse x))
