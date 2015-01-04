;;;; package.lisp
(defpackage #:schoolmanager
  (:use #:cl)
  (:export :main))

;; config
(defpackage #:schoolmanager.config
  (:use #:cl
        #:asdf
        #:envy))

;; Models
(defpackage #:schoolmanager.model
  (:use #:cl)
  (:export :person))

;; Datalayer
(defpackage #:schoolmanager.datalayer.entities
  (:use #:cl
        #:datafly
        #:sxql
        #:envy

        #:schoolmanager.model)
  (:shadowing-import-from :envy
                :config)
  (:export :person-entity
           :to-model-object
           :save-model-object))

(defpackage #:schoolmanager.datalayer.import
  (:use #:cl
        #:split-sequence)
  (:export :import-from-csv))

(defpackage #:schoolmanager.datalayer
  (:use #:cl
        #:datafly

        #:schoolmanager.datalayer.entities)
  (:export :setup-db
           :*debug-on*))

;; Tests
(defpackage #:schoolmanager.test.model
  (:use #:cl
        #:lisp-unit2

        #:schoolmanager.datalayer
        #:schoolmanager.model))

(defpackage #:schoolmanager.test.datalayer
  (:use #:cl
        #:lisp-unit2
        #:datafly
        #:sxql

        #:schoolmanager.datalayer)
  ;; (:shadowing-import-from #:schoolmanager.datalayer.entities:person-entity)
  )

(defpackage #:schoolmanager.test
  (:use #:cl
        #:lisp-unit2
  
        #:schoolmanager.test.model
        #:schoolmanager.test.datalayer)
  (:export :main))

