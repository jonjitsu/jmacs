;;(defun jmacs-define-keys (minor-mode &rest pairs)
;;  (mapc
;;   (lambda (pair)
;;     (let ((binding (car pair))
;;	   (fn (nth 1 pair)))
;;       (define-key minor-mode binding fn))) pairs))
;;     (message pair)) pairs))

(defun jmacs-test-func ()
  (interactive)
  (message "JMACS TEST WORKS"))

(defvar jmacs-minor-mode-map 
  (make-keymap)
  "jmacs-minor-mode keymap.")

(define-minor-mode jmacs-minor-mode
  "jmacs overrides and customizations of global key bindings"
  ;; enabled by default
  t
  ;; mode line
  " jmacs mode" 'jmacs-minor-mode-map)


;;
;; Test binds
;;
(define-key jmacs-minor-mode-map (kbd "C-i") 'jmacs-test-func)
;(define-key jmacs-minor-mode-map (kbd "z") 'jmacs-test-func)

;;
;; Rebind help system
;;
(define-key jmacs-minor-mode-map (kbd "C-h C-k") 'describe-key)
(define-key jmacs-minor-mode-map (kbd "C-h C-f") 'describe-function)
(define-key jmacs-minor-mode-map (kbd "C-h C-v") 'describe-variable)
(define-key jmacs-minor-mode-map (kbd "C-h C-m") 'describe-mode)

(define-key jmacs-minor-mode-map (kbd "C-x C-b") 'switch-to-buffer)
;;(define-key jmacs-minor-mode-map (kbd "RET") 'align-newline-and-indent)
;;(define-key minibuffer-local-map (kbd "RET") 'newline)
;;(define-key minibuffer-inactive-mode-map (kbd "RET") 'newline)



;;
;; jmacs custom binds use C-j as prefix
;;
  
(defun jmacs-reload-profile ()
  (interactive)
  (load-file jmacs-profile-file))

(defun jmacs-edit-profile ()
  (interactive)
  (message "@TODO"))

(define-key jmacs-minor-mode-map (kbd "C-j C-r") 'jmacs-reload-profile)
(define-key jmacs-minor-mode-map (kbd "C-j C-m") 'jmacs-minor-mode)

(jmacs-minor-mode 1)














