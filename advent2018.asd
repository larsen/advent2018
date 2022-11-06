;;;; advent2018.asd

(asdf:defsystem #:advent2018
  :description "Advent of Code 2018"
  :author "Stefano Rodighiero <stefano.rodighiero@gmail.com>"
  :version "0.0.1"
  :serial t
  :depends-on (#:alexandria #:cl-ppcre #:split-sequence)
  :components ((:file "package")
               (:file "day1")))

(asdf:defsystem #:advent2018/test
  :depends-on (#:advent2018
               #:parachute)
  :components ((:module "tests"
                :components ((:file "package")
                             (:file "main"))))
  :perform (test-op (op _) (symbol-call :parachute :test :advent2018/test)))
