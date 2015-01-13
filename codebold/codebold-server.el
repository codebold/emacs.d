;;; codebold-server.el --- Emacs configuration file

;;; Commentary:
;; 
;; Configures features for running emacs as a demon.

;;; Code:

;;
;(add-hook 'server-switch-hook
;          (let ((ergoemacs-is-user-defined-map-change-p t))
;            (lambda ()
;              (global-set-key (kbd "C-w") 'server-edit))))
;              (when (current-local-map)
;                (use-local-map (copy-keymap (current-local-map))))
;              (when server-buffer-clients
;                (local-set-key (kbd "C-w") 'server-edit)))))
;              (ergoemacs-key "C-w" 'server-edit))))
                                        ;(global-set-key (kbd "C-w") 'server-edit)

(ergoemacs-theme-component ergoemacs-server ()
  "Emacs server"
  (when server-switch-hook
    (message "### server-switch-hook ###")
    (global-set-key global-map (kbd "C-w") 'server-edit)))

(ergoemacs-require 'ergoemacs-server)


(provide 'codebold-server)
;;; codebold-server.el ends here
