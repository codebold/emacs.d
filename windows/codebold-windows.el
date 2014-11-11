;;; codebold-windows.el --- Emacs configuration file

;;; Commentary:
;; 
;; Configures the basic settings.

;;; Code:


;; Encoding
(setq w32-enable-unicode-output)

;; Start fullscreen
(w32-send-sys-command 61488)

(provide 'codebold-windows)
;;; codebold-windows.el ends here
