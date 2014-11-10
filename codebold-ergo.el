;;; codebold-ergo.el --- Emacs configuration file

;;; Commentary:
;; 
;; Configures ergoemacs mode.

;;; Code:

;; Initializes ergoemacs with Neo2 key bindings.
(require 'ergoemacs-mode)
(setq ergoemacs-keyboard-layout "neo")
(ergoemacs-mode 1)

;; Redo commands
(require 'redo+)
(when (require 'redo+ nil 'noerror)
    (global-set-key (kbd "C-S-z") 'redo)
    (global-set-key (kbd "C-y") 'redo))

(provide 'codebold-ergo)
;;; codebold-ergo.el ends here
