;;; codebold-theme.el --- Emacs configuration file

;;; Commentary:
;; 
;; Sets the look and feel of Emacs.

;;; Code:

;; Defines the wombat theme.
(load-theme 'wombat)

;; Disables startup messages
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-screen t)

;; Disables unnecessary bars
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(display-time-mode 1) ; display time
(setq display-time-day-and-date t) ; display date and time always
(global-linum-mode 1) ; Displays line numbers on the left hand site
(column-number-mode 1) ; Displays current column in mode bar
(setq size-indication-mode t) ; Show file size
(show-paren-mode) ; Show parens
(which-function-mode) ; Which function are we in?

;; Displays the buffer name and the major mode in the window's title bar
(setq frame-title-format "Emacs - %b - %m - %M")
;; Plays aural feedback
(setq visible-bell t)

;; disable key bindings suggestions
(setq suggest-key-bindings nil)

;; Scrolling behaviour
(setq scroll-step 1)
(setq scroll-conservatively 50)
(setq scroll-preserve-screen-position nil)


;; whenever an external process changes a file underneath emacs, and there
;; was no unsaved changes in the corresponding buffer, just revert its
;; content to reflect what's on-disk.
(global-auto-revert-mode 1)

(provide 'codebold-theme)
;;; codebold-theme.el ends here
