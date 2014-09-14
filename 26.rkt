;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |26|) (read-case-sensitive #t) (teachpacks ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;; list-of-points : ListOfPoints -> circle 
;; GIVEN: list of points
;; RETURNS: solid blue circle at every point in the list
;; Examples:
;; (ListOfPoints (make-posn 1 2) (make-posn 2 3))

(define (ListOfPoints lst)
  (if (empty? lst) 
      true
      (ListOfPoints (place-image (circle 10 "solid" "blue") (point-x lst) (point-y lst) (empty-scene 300 300)))))

(define-struct point (x y))


(ListOfPoints (list (make-point 10 20) (make-point 40 50)))
