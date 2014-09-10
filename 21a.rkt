;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 21a) (read-case-sensitive #t) (teachpacks ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;person: Number Number -> image
;GIVEN: First name, last name, height and weight of the person
;RETURNS: image of the person with first name and last name

(define (head n)
  (circle n "outline" "black"))

(define (body l b)

(rectangle l b "outline" "black"))

(define (hands-legs s)
  (square s "outline" "black")
  )

(define (person-image first-name last-name person-height person-weight)
  
   (above (head 8)
       (beside(hands-legs 10)
              (body person-weight person-height)
              (hands-legs 10))
       (beside(hands-legs 10) (hands-legs 10))
       (beside(text first-name 15 "black")(text last-name 15 "black"))))

(person-image "Shivani" " Gowrishankar" 10 20)








