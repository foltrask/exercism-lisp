(in-package #:cl-user)
(defpackage #:gigasecond
  (:use #:cl)
  (:export #:from))
(in-package #:gigasecond)

(defparameter *gigasecond* (expt 10 9))
(defun from (year month date hour minute second)
  (multiple-value-bind ( second minute hour date month year ) 
    (decode-universal-time (+ *gigasecond*
                              (encode-universal-time second minute hour date month year 0)) 0)
    (list year month date hour minute second)))
