(in-package :schoolmanager.datalayer)

(defvar *database-type* nil)
(defvar *database-name* nil)

(defun setup-db-debug ()
  (datafly:connect-toplevel *database-type*
                            :database-name *database-name*))

(defun setup-db-production ()
  )

(defun setup-db ()
  (setf *database-type* (getf
                         (envy:config :schoolmanager.config)
                         :database-type))
  (setf *database-name* (getf
                         (getf
                          (envy:config :schoolmanager.config)
                          :database-connection-spec)
                         :database-name))
  (if (getf (envy:config :schoolmanager.config) :debug)
      (setup-db-debug)
      (setup-db-production)))
