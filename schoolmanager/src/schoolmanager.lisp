(in-package #:schoolmanager)

(defparameter *standard-args-flags*
  (list
   '(:help print-help-text)
   '(:h print-help-text))
  "Definition of all flags for the executeable. It should map KEY as flag with a specific FUNCTION for the flag.")

(defparameter *standard-help-text*
  "hello world")

(defvar *help-text* *standard-help-text*
  "The help text for the help flag")

(defvar *args-flags* *standard-args-flags*)

(defun print-help-text ()
  (format t *help-text*))

(defun main (args)
  (schoolmanager.datalayer:setup-db)
  (if (= 0 (length args))
      (main-gui args)
      (main-console args *args-flags*)))

(defun main-console (args)
  (let ((did-something nil))
    (dolist (symbols *arg-flags*)
      (if (getf args (elt symbols 0))
          (progn
            (funcall (elt symbol 1))
            (setf did-something t))))
    (if (not did-something)
        t ; do standard stuff here
        )))

(defun main-gui (args))

