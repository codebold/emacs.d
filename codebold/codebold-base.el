;;; codebold-base.el --- Emacs configuration file

;;; Commentary:
;; 
;; Configures the basic settings.

;;; Code:


;; Encoding
(setq w32-enable-unicode-output) 
(setq utf-translate-cjk-mode nil) ; disable CJK coding/encoding (Chinese/Japanese/Korean characters)
(set-language-environment 'utf-8)
(set-keyboard-coding-system 'utf-8-mac) ; For old Carbon emacs on OS X only
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(unless (eq system-type 'windows-nt)
  (set-selection-coding-system 'utf-8))
(prefer-coding-system 'utf-8)

;; Debugging
(setq debug-on-error t)

;; Syntax checking
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Printer
(setq printer-name "\\\\SEC001599EEEAD0")

;; Short confirmation
(fset 'yes-or-no-p 'y-or-n-p)

;; reenable some disabled features
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)


(provide 'codebold-base)
;;; codebold-base.el ends here
