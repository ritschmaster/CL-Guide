(in-package :schoolmanager.model)

(defclass person ()
  ((firstname
    :initarg :firstname
    :initform ""
    :accessor firstname)
     (lastname
   :initarg :lastname
   :initform ""
   :accessor lastname)))
