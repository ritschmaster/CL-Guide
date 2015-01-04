(in-package :schoolmanager.config)

(defparameter *standard-env-var* "APP_ENV")
(defvar *env-var* *standard-env-var*)

(setf (envy:config-env-var) *env-var*)

(defvar *application-root* (asdf:component-pathname
                            (asdf:find-system :schoolmanager)))

;; TODO: fix problem *application-root* => #p"~/quicklisp/schoolmanager /"
(defvar *development-database-name* (merge-pathnames
                                     "schoolmanager-db.db"
                                     *application-root*))

(envy:defconfig :common
    `(:application-root ,*application-root*))

(envy:defconfig |development|
                '(:debug t
                  :database-type :sqlite3
                  :database-connection-spec
                  (:database-name *development-database-name*)))

(envy:defconfig |production|
                '(:debug nil
                  :database-type :mysql
                  :database-connection-spec
                  (:database-name "test"
                                  :usename "whoami"
                                  :password "1234")))
