
(provide 'jaw)
(require 'cl-lib)


(defun jaw-join-paths(&rest paths)
"
  Build a path out of parts
"
  (cl-reduce 
   (lambda (p1 p2)
     (concat (file-name-as-directory p1) p2)) 
   paths))

(defun jaw-load-packages(&rest packages)
  (mapc 
   (lambda (package) 
     (let* ((package-path (jaw-join-paths package-user-dir package))
	   (package-wildcard (concat package-path "-*"))
	   (possible-packages (file-expand-wildcards package-wildcard)))
       (mapc 
	(lambda (real-package-path)
	  (when (file-directory-p real-package-path)
	    (progn 
	      (add-to-list 'load-path real-package-path))	      
	    )) possible-packages))
     ) packages))


(defun jaw-dirname (path)
  " Strip first part of path.
    mimmicks php/bash dirname " 
  (if (string-equal "" path)
      ""
    (directory-file-name 
     (file-name-directory 
      (directory-file-name path)))))

(defun jaw-eval-and-test ()
  "Evals the test touched by the cursor and runs it. Or evals defun and runs supporting test."
  (interactive)
  (eval-defun)
  (let ((test-func (concat "test-" (which-function))))
    (ert (intern test-func))))



;;
;; Make directory and sub directories if not exists. 
;; Don't throw error if exists.
;;
;; mkdir -p equivalent
;;
;; @return t if something was created, nil otherwise
(defun jaw-make-directory (dir)
  (unless (file-exists-p dir)
    (jaw-make-directory (jaw-dirname dir))
    (make-directory dir)
    t))
