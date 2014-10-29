(defvar jmacs-profile-dir 
  (file-name-directory load-file-name))

(add-to-list 'load-path jmacs-profile-dir)

(load "base")

(ido-mode 1)

;(setq initial-buffer-choice "* jaw *")
;(setq initial-scratch-buffer nil)
(setq initial-buffer-choice load-file-name)

;(setq wg-prefix-key (kbd "C-c w"))
;(require 'workgroups)

(message "Test profile loaded!")

