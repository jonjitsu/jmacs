
(require 'jmacs-base)
(require 'jmacs-workgroups)


(helm-mode 1)
(org-mode)



(define-key jmacs-minor-mode-map (kbd "M-SPC") 'hippie-expand)
(define-key jmacs-minor-mode-map (kbd "M-TAB") '-expand)

(setq hippie-expand-try-functions-list
       '(try-complete-lisp-symbol
         try-complete-lisp-symbol-partially
         try-expand-dabbrev
         try-expand-dabbrev-from-kill
         try-expand-dabbrev-all-buffers
         try-expand-line
         try-complete-file-name-partially
         try-complete-file-name))

