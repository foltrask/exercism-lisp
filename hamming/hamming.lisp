(defpackage #:hamming
  (:use #:cl)
  (:export #:distance))

(in-package #:hamming)

(defun distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands." 
  (if (eql (length dna1)(length dna2))
        (loop for i from 0 below (length dna1)
             count (char-not-equal (char dna1 i)(char dna2 i)))))
