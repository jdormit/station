(defpackage station/tests/main
  (:use :cl
        :station
        :rove))
(in-package :station/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :station)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
