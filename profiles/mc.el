(defvar jmacs-profile-dir 
  (file-name-directory load-file-name))

(add-to-list 'load-path jmacs-profile-dir)

(load "base")

(defun jaw-startup-layout() 
  (interactive)
  (dired "~")
  (split-window-horizontally)
  (next-multiframe-window)
  (dired "/tmp"))

(jaw-startup-layout)
  

(message "MC profile loaded!")


