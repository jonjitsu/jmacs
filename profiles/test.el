(global-set-key (kbd "C-c C-j C-b") 'eval-buffer)

(defvar jmacs-profile-file load-file-name)

(defvar jmacs-home-dir 
  (directory-file-name
   (file-name-directory
    (directory-file-name
     (file-name-directory
      (directory-file-name load-file-name))))))

(defvar jmacs-lib-dir
  (concat (file-name-as-directory jmacs-home-dir) "library"))

(add-to-list 'load-path jmacs-lib-dir)

(load "base")

;(ido-mode 1)
(helm-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)

;(setq initial-buffer-choice "* jaw *")
;(setq initial-scratch-buffer nil)
;(setq initial-buffer-choice load-file-name)

;(setq wg-prefix-key (kbd "C-c w"))
;(require 'workgroups)

(message "Test profile loaded!")




;(current-window-configuration)
;(save-window-excursion)
;(emacs-persistence-directory)
