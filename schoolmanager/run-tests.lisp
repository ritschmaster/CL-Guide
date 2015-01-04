#!/usr/bin/cl-launch -Q -s schoolmanager -s osicat -E main


(setf (osicat:environment-variable "APP_ENV")
      "development")

(defun main (args)
  (schoolmanager.test:main args))
