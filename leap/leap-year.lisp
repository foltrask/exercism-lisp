(defpackage #:leap
  (:use #:common-lisp)
  (:export #:leap-year-p))
(in-package #:leap)

(defun leap-year-p (year)
  (and (= (mod year 4) 0)
       (or (not (zerop (mod year 100)))
           (zerop (mod year 400)))))

(defun leap-year-p (year)
  (and (= (mod year 4) 0)
       (or (not (= (mod year 100) 0))
           (= (mod year 400) 0))))
 
