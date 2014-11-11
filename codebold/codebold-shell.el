;;; codebold-shell.el --- Emacs configuration file

;;; Commentary:
;; 
;; Configures web editing features.

;;; Code:

;; Shell colors
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; Eshell W32
(defun eshell/op (file)
    "Invoke (w32-shell-execute \"open\" file) and substitute slashes for backslashes"
    (w32-shell-execute "open"
                       (subst-char-in-string ?\\ ?/ (expand-file-name file)))
    nil)

(defun eshell/ex (file)
    "Invoke (w32-shell-execute \"explore\" file) and substitute slashes for backslashes"
    (w32-shell-execute "explore"
                       (subst-char-in-string ?\\ ?/ (expand-file-name file)))
    nil)


(provide 'codebold-shell)
;;; codebold-shell.el ends here
