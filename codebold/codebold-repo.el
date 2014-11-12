;;; codebold-repo.el --- Emacs configuration file

;;; Commentary:
;; 
;; Provides all required packages.

;;; Code:

;; el-get.el
;; (add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
;;     (goto-char (point-max))
;;     (eval-print-last-sexp)))

;; (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
;; (el-get 'sync)

;; package.el

;; Checks if package.el was already loaded for emacs wersions below 24.
(if (< emacs-major-version 24)
    (error "You are using an outdated Emacs version! Please update to version 24!"))

;; Initializes melpa package manager.
(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Install required packages (http://blog.zhengdong.me/2012/03/14/how-i-manage-emacs-packages).

(require 'cl)

;; Guarantee all packages are installed on start
(defvar packages-list
  '(auto-complete
    autopair
    browse-kill-ring
    desktop
    dired+
    ergoemacs-mode
    flycheck
    goto-last-change
    ido
    image-dired
    recentf
    redo+
    savehist
    w32-browser
    web-mode
    workgroups
    yasnippet)
  "List of packages needs to be installed at launch.")

(defun has-package-not-installed ()
  (loop for p in packages-list
        when (not (package-installed-p p)) do (return t)
        finally (return nil)))
(when (has-package-not-installed)
  ;; Check for new packages (package versions)
  (message "%s" "Get latest versions of all packages...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; Install the missing packages
  (dolist (p packages-list)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'codebold-repo)
;;; codebold-repo.el ends here
