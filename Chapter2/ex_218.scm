#lang scheme

(list 2 3 4 5)

(define list1 (list 1 2 3 4 5))

(define (reverse list1)
  (if (null? list1)
      list1
      (cons (reverse (cdr list1))
            (car list1))))

(reverse list1)
(define list2 (reverse list1))
(display list2)
