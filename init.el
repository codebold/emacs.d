;;; init.el --- Emacs configuration file

;;; Commentary:
;; 
;; Initializes all packages and configurations.

;;; Code:

;; Adds the current dir to the load-path.
(add-to-list 'load-path (file-name-directory (or (buffer-file-name) load-file-name)))

;; Loads the required configurations.
(require 'codebold-paths)
(require 'codebold-repo)
(require 'codebold-base)
(require 'codebold-ergo)
(require 'codebold-state)
(require 'codebold-editing)
(require 'codebold-browse)
(require 'codebold-theme)

(require 'codebold-shell)
(require 'codebold-web)
(require 'codebold-code)

;;; init.el ends here
