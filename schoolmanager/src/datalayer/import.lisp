(in-package :schoolmanager-datalayer-import)

(defparameter *csv-delim* #\,)

(defun import-csv-line (line)
  (let ((words (split-sequence *csv-delim* line)))
    ))

(defun import-from-csv (filename)
  (with-open-file (in-stream filename)
    (loop
       for line = (read-line in-stream nil 'eof)
         until (eq line 'eof) do
         (import-csv-line line))))
