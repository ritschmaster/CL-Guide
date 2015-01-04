(in-package :schoolmanager.datalayer.entities)

(defmethod to-model-object ((object list))
  (make-instance 'schoolmanager.model:person
                 :firstname (getf object :firstname)
                 :lastname (getf object :lastname)
                 :birthday (getf object :birthday)))

(defmethod save-model-object ((object schoolmanager.model:person))
  (let ((id (slot-value object id))
        (firstname (slot-value object firstname))
        (lastname (slot-value object lastname))
        (birthday (slot-value object birthday)))
    (datafly:execute (insert-into :persons
                                  (set= :id id
                                        :firstname firstname
                                        :lastname lastname
                                        :birthday birthday)))
    (if (null id)
        (progn
          (setf id (datafly:retrieve-one
                    (sxql:select :id
                                 (sxql:from :persons)
                                 (sxql:where (:and
                                              (:= :firstname firstname)
                                              (:= :lastname lastname))))))))))
