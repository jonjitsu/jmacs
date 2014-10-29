(defvar jmacs-profile-dir 
  (file-name-directory load-file-name))

(add-to-list 'load-path jmacs-profile-dir)

(load "base")


(message "Test profile loaded!")


