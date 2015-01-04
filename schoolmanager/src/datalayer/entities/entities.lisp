(in-package :schoolmanager.datalayer.entities)

(defgeneric to-model-object (object)
  (:documentation "Translates an arbitary object to a model object."))

(defgeneric save-model-object (object)
  (:documentation "Saves an arbitary model object to the database"))
