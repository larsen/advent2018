(in-package #:advent2018)


(defun read-frequencies ()
  (mapcar #'parse-integer
          (uiop:read-file-lines
           (asdf:system-relative-pathname :advent2018 "inputs/day1"))))

(defun day1/solution1 ()
  (reduce #'+ (read-frequencies)))
