#lang scheme

(define nil '())

(define (subsets s)
  (if (null? s)
      (list nil)
      (let ((rest (subsets (cdr s))))
	(append rest (map (lambda (t)
		     	    (cons (car s) t))
			  rest)))))

(subsets (list 1 2 3))
