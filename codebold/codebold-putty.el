;;; codebold-putty.el --- Emacs configuration file

;;; Commentary:
;; 
;; Configures putty specific features.

;;; Code:

;; PuTTY fix. Ugly. Bad. But it works. (Good)
(define-key global-map "\M-[1~" 'beginning-of-line)
(define-key global-map [select] 'end-of-line)

(provide 'codebold-putty)
;;; codebold-putty.el ends here
