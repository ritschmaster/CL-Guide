;;;; schoolmanager.asd

(asdf:defsystem #:schoolmanager
  :description "This is a very simple abstraction of a the managment of a school."
  :author "Richard Bäck <ritschmaster1@gmail.com>"
  :license "GPLv3"
  :depends-on (#:split-sequence
                                        ;#:apply-argv
               #:lisp-unit2
               #:crane)
  :components ((:file "package")
               (:module "src"
                        :depends-on ("package")
                        :components
                        ((:file "schoolmanager")))
               (:module "src/model"
                        :depends-on ("src")
                        :components
                        ((:file "person")
                         (:file "pupil" :depends-on ("person"))
                         (:file "school-class" :depends-on ("pupil"))))))

