(in-package :schoolmanager.test)

(defparameter *standard-args-flags*
  (list
   '(:help print-help-text)
   '(:h print-help-text))
  "Definition of all flags for the executeable. It should map KEY as flag with a specific FUNCTION for the flag.")

;; (defun print-help-text ()
;;   ("This executeable runs the test cases of schoolmanager"))

(defvar *args-flags* *standard-args-flags*)

(defun main (args)
  (schoolmanager.datalayer:setup-db)
  (let ((did-something nil))
    (dolist (symbols *args-flags*)
    (if (getf args (elt symbols 0))
        (progn
          (funcall (elt symbol 1))
          (setf did-something t))))
    (if (not did-something)
        (run-all-tests))))

(defun run-all-tests ()
  (lisp-unit2:print-summary
   (lisp-unit2:run-tests :package :schoolmanager.test.datalayer)))
