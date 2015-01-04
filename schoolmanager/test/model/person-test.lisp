(in-package :schoolmanager.test.model)

(defparameter *standard-firstname* "John")
(defparameter *standard-lastname* "Smith")
(defparameter *standard-birthday* 315532800)

(defvar *id* nil)
(defvar *firstname* *standard-firstname*)
(defvar *lastname* *standard-lastname*)
(defvar *birthday* *standard-birthday*)

(lisp-unit2:define-test schoolmanager.test.datalayer::create-person
    ()
  (let ((person (make-instance :fistname *firstname*
                               :lastname *lastname*
                               :birthday *birthday*))
        (selected-person nil)
        (id nil))
    (schoolm.datalayer.entities:save-model-object person))
  )

(lisp-unit2:define-test schoolmanager.test.datalayer::select-person
    ()

  (let ((person (datafly:retrieve-one (sxql:select :*
                                        (sxql:from :persons)
                                        (sxql:where (:= :id 1))))))
    (lisp-unit2:assert-equal "Test" (getf person :firstname))
    (lisp-unit2:assert-equal "User" (getf person :lastname))
    (lisp-unit2:assert-equal 660009600 (getf person :birthday))))
