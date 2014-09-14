;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |25|) (read-case-sensitive #t) (teachpacks ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;; ListOfBoolean : ListOfBoolean -> Boolean
;; GIVEN: a list of booleans
;; RETURNS: true if all the booleans in the list are true, else false
;; Examples:

;; (ListOfBoolean (list 1 1 0)) = false
;; (ListOfBoolean (list 1 1 1)) = true

(define (ListOfBoolean lst)
  (if (empty? lst) true (and (first lst) (ListOfBoolean (rest lst)))))



(check-expect (ListOfBoolean (list true true)) true)
(check-expect (ListOfBoolean (list false true)) false)
(check-expect (ListOfBoolean (list false false)) false)


