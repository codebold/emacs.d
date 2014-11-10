;;; codebold-editing.el --- Emacs configuration file

;;; Commentary:
;; 
;; Configures the editing settings.

;;; Code:

;; tabs and column defs
(setq-default indent-tabs-mode nil) ; no fucking tabs!
(setq tab-width 4) ; but just in case
(setq tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92)))
(setq fill-column 80)
(setq c-basic-offset 4)

;; If you enable Delete Selection mode, a minor mode, then inserting text while the mark is active causes the selected text to be deleted first. This also deactivates the mark. Many graphical applications follow this convention, but Emacs does not.
(delete-selection-mode 1)
;; if at the beg of line C-k includes the newline chars
(setq kill-whole-line t)

;; goto last change
(require 'goto-last-change)

;;; YaSnippet
;; should be loaded before auto complete so that they can work together
(require 'yasnippet)
(yas-global-mode 1)

;;; Auto complete
;; should be loaded after yasnippet so that they can work together
(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict/default/")
(add-to-list 'ac-user-dictionary-files "~/.emacs.d/dict/user/dict")
(ac-config-default)

(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;; auto indentation
;; DO NOT USE THIS MODE AS IT BREAKS THE BEHAVIOUR OF "delete-backward-char"
;; (require 'auto-indent-mode)
;; (auto-indent-global-mode)

;; auto indentation
(electric-indent-mode 1)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Ignoring electric indentation for Python
(defun electric-indent-ignore-python (char)
    "Ignore electric indentation for python-mode"
    (if (equal major-mode 'python-mode)
            `no-indent'
        nil))
(add-hook 'electric-indent-functions 'electric-indent-ignore-python)

;; Enter key executes newline-and-indent
(defun set-newline-and-indent ()
    "Map the return key with `newline-and-indent'"
    (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'python-mode-hook 'set-newline-and-indent)

;; Automatically pairs braces and quotes
(require 'autopair)
(autopair-global-mode) ;; to enable in all buffers


(defun cdb/hown ()
    "Move hundred lines down."
    (interactive)
    (next-line 100)
    (back-to-indentation))

(defun cdb/hup ()
    "Move hundred lines up."
    (interactive)
    (next-line -100)
    (back-to-indentation))

(defun cdb/fown ()
    "Move fifty lines down."
    (interactive)
    (next-line 50)
    (back-to-indentation))

(defun cdb/fup ()
    "Move fifty lines up."
    (interactive)
    (next-line -50)
    (back-to-indentation))

(defun cdb/town ()
    "Move ten lines down."
    (interactive)
    (next-line 10)
    (back-to-indentation))

(defun cdb/tup ()
    "Move ten lines up."
    (interactive)
    (next-line -10)
    (back-to-indentation))

(provide 'codebold-editing)
;;; codebold-editing.el ends here
