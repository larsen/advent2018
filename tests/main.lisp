(in-package #:advent2018/test)

(define-test day1
  (is = (day1/solution1) 582)
  (is = (day1/solution2) 488)
  (is = (day2/solution1) 5390)
  (is string= (day2/solution2) "nvosmkcdtdbfhyxsphzgraljq"))
