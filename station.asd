(defsystem "station"
  :version "0.1.0"
  :author "Jeremy Dormitzer"
  :license "MIT"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "station/tests"))))

(defsystem "station/tests"
  :author "Jeremy Dormitzer"
  :license "MIT"
  :depends-on ("station"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for station"
  :perform (test-op (op c) (symbol-call :rove :run c)))
