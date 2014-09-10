;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |20|) (read-case-sensitive #t) (teachpacks ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define (head n)
  (circle n "outline" "black"))
(define (body l b)
   (rectangle b l "outline" "black"))
(define (hands-legs s)
  (square s "outline" "black")
  )

(above ( head 8)
       (beside( hands-legs 10)
              (body 30 25)
              (hands-legs 10))
       (beside(hands-legs 10) (hands-legs 10)))



  