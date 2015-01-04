(in-package :schoolmanager.model)

(defclass person ()
  ((id
    :initarg :id
    :initform nil
    :reader id)
   (firstname
    :initarg :firstname
    :initform (error "Must supply a firstname!")
    :accessor firstname)
   (lastname
    :initarg :lastname
    :initform (error "Must supply a lastname!")
    :accessor lastname)
   (birthday
    :initarg :birthday
    :initform (error "Must supply a birthday!")
    :accessor birthday)))
