(in-package :schoolmanager.datalayer.entities)

;; (crane:deftable school-class ()
;;   (school-classid :type integer
;;             :primaryp t)
;;   (firstname :type text)
;;   (lastname :type text)
;;   (birthday :type date))

;; (defmethod to-object ((table-tuple-object school-class))
;;   (make-instance 'schoolmanager.model:school-class
;;                  :firstname (firstname table-tuple-object)
;;                  :lastname (lastname table-tuple-object)
;;                  :birthday (birthday table-tuple-object)))

;; (defmethod to-table-tuple ((object schoolmanager.model:school-class) ())
;;   )
