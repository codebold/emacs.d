;;; codebold-windows.el --- Emacs configuration file

;;; Commentary:
;; 
;; Configures the basic settings.

;;; Code:


;; Encoding
(setq w32-enable-unicode-output)

;; Start fullscreen
(w32-send-sys-command 61488)

;; Tramp
(require 'tramp)
(add-to-list 'exec-path "C:/Program Files (x86)/PuTTy")
(setq tramp-default-method "plink")
;; (setq tramp-default-user "root"
;;     tramp-default-host "target")

(provide 'codebold-windows)
;;; codebold-windows.el ends here
