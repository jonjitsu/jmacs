(provide 'jmacs-workgroups) 

(setq wg-session-file (jaw-join-paths jmacs-profile-dir "session"))
(require 'workgroups2)
(workgroups-mode 1)

(define-key jmacs-minor-mode-map  (kbd "<pause>")     'wg-reload-session)
(define-key jmacs-minor-mode-map (kbd "C-S-<pause>") 'wg-save-session)
(define-key jmacs-minor-mode-map (kbd "C-j C-w")         'wg-switch-to-workgroup)
(define-key jmacs-minor-mode-map (kbd "C-j C-e")         'wg-switch-to-previous-workgroup)
