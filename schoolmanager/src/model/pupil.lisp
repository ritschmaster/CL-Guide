(in-package :schoolmanager.model)

(defclass pupil (person)
  ((id
    :initarg :id
    :initform nil
    :reader id)
   (school-class-object
    :initform nil
    :accessor school-class-object
    :documentation "The class to which this pupil belongs.")))
