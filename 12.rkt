;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |12|) (read-case-sensitive #t) (teachpacks ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
 (define-struct point (x y)) 

(make-point 5 3)) ;Creates a point structure with "5" in "x" field and "3" in "y" field

(point? 5) ;Checks if "5" is a point structure

(point? true); Checks if "true' is a point structure

(point? (make-point 2 1)); Creates a point structure with "2" in "x" field and "1" in "y" field and checks if it's a point structure

(point-x (make-point 8 5)); Creates a point structure with "8" in "x" field and "5" in "y" field and selects point-x instance

(point-y (make-point 42 15)); Creates a point structure with "2" in "42" field and "15" in "y" field and selects point-y instance.




