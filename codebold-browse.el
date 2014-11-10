;;; codebold-browse.el --- Emacs configuration file

;;; Commentary:
;; 
;; Configures web editing features.

;;; Code:

;; Ido (InteractivelyDoThings)
(require 'ido)
(setq ido-save-directory-list-file (expand-file-name ".ido.last" user-emacs-directory)
      ido-enable-flex-matching t
      ido-use-filename-at-point 'guess
      ido-show-dot-for-dired t
      ido-default-buffer-method 'selected-window)
(ido-mode 1)

;; Dired
(iimage-mode)
(require 'dired-aux)
(require 'image-dired)
(require 'dired-x)
(require 'dired+)
(require 'w32-browser)
(setq diredp-image-preview-in-tooltip nil)
(toggle-diredp-find-file-reuse-dir 1)
(setq dired-listing-switches "-alh")
(setq delete-by-moving-to-trash t)
;; (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file) ; was dired-advertised-find-file
;; (define-key dired-mode-map (kbd "^") (lambda () (interactive) (find-alternate-file "..")))  ; was dired-up-directory

(put 'dired-find-alternate-file 'disabled nil)

;; browse kill ring
(require 'browse-kill-ring)


(provide 'codebold-browse)
;;; codebold-browse.el ends here
