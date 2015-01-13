;;; codebold-server.el --- Emacs configuration file

;;; Commentary:
;; 
;; Configures features for running emacs as a demon.

;;; Code:

;; Make C-w end the emacsclient session - Already provided by ergoemacs!
;(add-hook 'server-switch-hook
;          (lambda ()
;            (when (current-local-map)
;              (use-local-map (copy-keymap (current-local-map))))
;            (when server-buffer-clients
;              (local-set-key (kbd "C-w") 'server-edit))))

(provide 'codebold-server)


;;; codebold-server.el ends here
