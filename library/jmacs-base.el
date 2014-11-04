(provide 'jmacs-base)
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

(scroll-bar-mode 1)
(setq scroll-bar-width 5)
;
; Key bindings
;
(require 'jmacs-minor-mode)


		
(defadvice find-file (before make-directory-maybe (filename &optional wildcards) activate)
  "Create parent directory if not exists while visiting file."
  (unless (file-exists-p filename)
    (let ((dir (file-name-directory filename)))
      (unless (file-exists-p dir)
        (make-directory dir))))
		)	
(menu-bar-mode -1)
(tool-bar-mode -1)
(delete-selection-mode 1)
(transient-mark-mode 1)
(global-font-lock-mode 1)
(show-paren-mode 1)
(setq show-paren-style 'mixed)
(when (member "DejaVu Sans Mono" (font-family-list))
  (set-face-attribute 'default nil :font "DejaVu Sans Mono"))

(set-frame-font "DejaVu Sans Mono-10")
