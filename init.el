.;;; init.el --- Emacs configuration file

;;; Commentary:
;; 
;; Initializes all packages and configurations.

;;; Code:

(add-to-list 'load-path (expand-file-name "codebold" user-emacs-directory))

(require 'codebold-paths)
(require 'codebold-repo)
(require 'codebold-base)
(require 'codebold-ergo)
(require 'codebold-state)
(require 'codebold-editing)
(require 'codebold-browse)
(require 'codebold-theme)

(unless (eq system-type 'windows-nt)
  (require 'codebold-windows))

(require 'codebold-shell)
(require 'codebold-web)
(require 'codebold-code)

;;; init.el ends here
