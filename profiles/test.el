(defvar jmacs-profile-dir 
  (file-name-directory load-file-name))

(add-to-list 'load-path jmacs-profile-dir)

(load "base")

;(setq initial-buffer-choice "* jaw *")
;(setq initial-scratch-buffer nil)
(setq initial-buffer-choice load-file-name)


(message "Test profile loaded!")


