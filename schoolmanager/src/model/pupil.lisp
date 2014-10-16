(in-package :schoolmanager.model)

(defclass pupil (person)
  ((catalog
   :initform (error "Must supply a catalog")
   :initarg :catalog
   :accessor catalog)
  (school-class-object
   :initform nil
   :accessor school-class-object
   :documentation "The class to which this pupil belongs.")))
