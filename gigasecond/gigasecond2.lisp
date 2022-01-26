;;; http://cl-cookbook.sourceforge.net/index.html
(in-package #:cl-user)
(defpackage #:gigasecond
  (:use #:cl)
  (:export #:from))
(in-package #:gigasecond)

(load "leap-year")


(defparameter *days-of-months* '(31 28 31 30 31 30 31 31 30 31 30 31))

(defparameter *days-of-months-leap* '(31 29 31 30 31 30 31 31 30 31 30 31)) 

(defstruct datetime year month day hour minute second)

(get-decoded-time) 

(defun days-of-month (year month)
  (if (leap:leap-year-p year)
      (elt *days-of-months-leap* (- month 1))
      (elt *days-of-months* (- month 1))))



(defun normalize-datetime ( datetime )
  (cond ((mod datetime-second 60)  )
        (mod datetime-minute 60)
        (mod datetime-hour 60)
     )

(defun from (year month day hour minute second)
  )
