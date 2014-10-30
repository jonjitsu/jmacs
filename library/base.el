

(require 'cl-lib)

;
; Base functionality to bootstrap the rest
;
(defun jaw-dirname (path)
" 
  Strip first part of path.
  mimmicks php/bash dirname
"
  (directory-file-name 
   (file-name-directory 
    (directory-file-name path))))

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


(defvar jmacs-config-dir
  (jaw-join-paths jmacs-home-dir "configs"))
(add-to-list 'load-path jmacs-config-dir)

;
; Base configuration to bootstrap the rest
;

(load "clean-start")


;
; package.el stuff
;

(setq package-user-dir (jaw-join-paths jmacs-home-dir "packages" "elpa"))
(add-to-list 'load-path package-user-dir)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)
;(require 'icicles)


;
; Key bindings
;
(load "mm-jmacs-overrides")
(load "cfg-test")

(global-set-key 
 (kbd "C-c C-l") 
 (lambda () (interactive) (describe-variable 'load-path)))
					
