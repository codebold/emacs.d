;;; codebold-state.el --- Emacs configuration file

;;; Commentary:
;; 
;; Configures web editing features.

;;; Code:

;; Preserves the desktop state
(require 'desktop)
(unless (file-exists-p (expand-file-name "desktop" user-emacs-directory))
  (make-directory (expand-file-name "desktop" user-emacs-directory) t))
(setq desktop-dirname             (expand-file-name "desktop" user-emacs-directory)
      desktop-base-file-name      "emacs-desktop"
      desktop-base-lock-name      "lock"
      desktop-path                (list desktop-dirname)
      desktop-save                t
      desktop-files-not-to-save   "^$" ;reload tramp paths
      desktop-load-locked-desktop t
      history-length 250)
(desktop-save-mode 1)
(defun my-desktop-save ()
    (interactive)
    ;; Don't call desktop-save-in-desktop-dir, as it prints a message.
    (if (eq (desktop-owner) (emacs-pid))
            (desktop-save desktop-dirname)))
(add-hook 'auto-save-hook 'my-desktop-save)

;; Preserves the mini buffers
(require 'savehist)
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring)
      savehist-file (expand-file-name ".savehist" user-emacs-directory))
(savehist-mode 1)

;; Extended buffer listing.
(defalias 'list-buffers 'ibuffer)

;; Workgroups
(require 'workgroups)
(setq wg-prefix-key (kbd "C-0")
      wg-file (expand-file-name "workgroups" user-emacs-directory))
(workgroups-mode 1)

;; Recent Files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 50)


(provide 'codebold-state)
;;; codebold-state.el ends here
