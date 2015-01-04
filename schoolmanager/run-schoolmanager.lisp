#!/usr/bin/cl-launch -Q -s apply-argv -s schoolmanager -E main

(defun main (argv)
  (schoolmanager:main (apply-argv:parse-argv argv)))
