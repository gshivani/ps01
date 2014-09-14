;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |24|) (read-case-sensitive #t) (teachpacks ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;; product : list -> product
;; Returns the product of the numbers given in the list
;; Examples:
;; (product empty) = 1
;; (product (list 1)) = 1
;; (product (list 1 2 3)) = 6
(define (list-product lst)
  (if
    (empty? lst) 
    1 
    ( * (first lst) (list-product (rest lst)))))

;; Tests:

(check-expect (list-product (list 2 3)) 6)
(check-expect (list-product (list)) 1)

 