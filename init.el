;;; init.el --- Emacs configuration file

;;; Commentary:
;; 
;; Initializes all packages and configurations.

;;; Code:

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(add-to-list 'load-path (expand-file-name "codebold" user-emacs-directory))

(require 'codebold-paths)
(require 'codebold-repo)
(require 'codebold-base)
(require 'codebold-ergo)
(require 'codebold-state)
(require 'codebold-editing)
(require 'codebold-browse)
(require 'codebold-theme)

(when (eq system-type 'windows-nt)
  (add-to-list 'load-path (expand-file-name "windows" user-emacs-directory))
  (require 'codebold-windows))

(require 'codebold-shell)
(require 'codebold-web)
(require 'codebold-code)

(when (file-exists-p (expand-file-name "codebold/codebold-local.el" user-emacs-directory))
  (require 'codebold-local))

;;; init.el ends here
