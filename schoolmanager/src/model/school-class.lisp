(in-package :schoolmanager.model)

(defclass school-class ()
  ((description
    :initarg :description
    :initform (error "Must supply a class description")
    :accessor description)
   (pupils
    :initform (make-array 0 :fill-pointer 0 :adjustable t)
    :reader pupils)))


(defgeneric add-pupil (school-class-object pupil-object)
  (:documentation "Adds a pupil to a class"))

(defmethod add-pupil ((school-class-object school-class) (pupil-object pupil))
  (vector-push-extend pupil-object (pupils school-class-object))
  (setf (school-class-object pupil-object) school-class-object))


(defgeneric remove-pupil (school-class-object pupil-object)
  (:documentation "Removes a pupil from a class"))

(defmethod remove-pupil ((school-class-object school-class) (pupil-object pupil))
  (with-slots ((pupils-of-class pupils)) school-class-object
    (delete pupil-object pupils-of-class))
  (setf (school-class-object pupil-object) nil))
