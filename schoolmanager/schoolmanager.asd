;;;; schoolmanager.asd

(asdf:defsystem #:schoolmanager
  :description "This is a very simple abstraction of a the managment of a school."
  :author "Richard Bäck <ritschmaster1@gmail.com>"
  :license "GPLv3"
  :depends-on (#:split-sequence
               #:lisp-unit2
               #:datafly
               #:envy
               #:mcclim)
  :components ((:file "package")
               (:file "config"
                      :depends-on ("package"))
               (:module "src"
                        :depends-on ("package")
                        :components
                        ((:file "schoolmanager")))
               (:module "src/model"
                        :depends-on ("src")
                        :components
                        ((:file "person")
                         (:file "pupil" :depends-on ("person"))
                         (:file "school-class" :depends-on ("pupil"))))
               (:module "src/datalayer"
                        :depends-on ("src")
                        :components
                        ((:file "datalayer")))
               (:module "src/datalayer/entities"
                        :depends-on ("src/datalayer")
                        :components
                        ((:file "entities")
                         (:file "person" :depends-on ("entities"))
                         (:file "pupil" :depends-on ("person"))))
               (:module "test/model"
                        :depends-on ("src"))
               (:module "test/datalayer"
                        :depends-on ("test/model")
                        :components
                        ((:file "person-test")))
               (:module "test"
                        :depends-on ("test/model")
                        :components
                        ((:file "test")))))

