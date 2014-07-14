#lang scheme

(define x (list (list 1 2) (list 3 4)))

(define (fringe l)
  (if (pair? l)
      (append (fringe (car l)) (fringe (cdr l)))
      (if (null? l)
          '()
          (list l))))

(fringe x)
(fringe (list x x))
(fringe (list (list 1 2 3) (list 4 6 5)))
