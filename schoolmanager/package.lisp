;;;; package.lisp

(defpackage #:schoolmanager
  (:use #:cl)
  (:export :main))

(defpackage #:schoolmanager.model
  (:use #:cl))

(defpackage #:schoolmanager.datalayer
  (:use #:cl))

(defpackage #:schoolmanager.datalayer.import
  (:use #:cl
        #:split-sequence)
  (:export :import-from-csv))

