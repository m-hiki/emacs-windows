(setq default-directory "~/")


;; window settings
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(if (boundp 'window-system)
    (setq default-frame-alist
	  (append (list
		   '(foreground-color . "#e0e0e0")
		   '(background-color . "black"))
		  default-frame-alist)
	  )
  )
(setq initial-frame-alist default-frame-alist)
(set-frame-parameter (selected-frame) 'alpha '(0.85))
(setq mode-line-frame-indentification " ")
(setq frame-title-format
      (if (buffer-file-name)
          (format "%%f")
        (format "%%b")))
(setq blink-cursor-mode nil)
(setq initial-scratch-message "")
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14700")
(setq-default line-spacing 0)
;;(set-scroll-bar-mode nil)
;;(show-paren-mode t)
;;(setq show-paren-delay 0)
;;(setq show-paren-style 'expression)
;;(setq set-face-background 'show-paren-match-face "#500")
;;(modify-frame-parameters nil '((scroll-bar-width . 14)))
;;(setq transient-mark-mode t)

;;; modeline settings
(setq display-time-string-forms
      '((format "%s/%s %s:%s%s" month day hour minutes am-pm)
        load
        (if mail " Mail" "")))
(display-time-mode t)
(global-linum-mode t)
(line-number-mode t)
(column-number-mode t)
(savehist-mode 1)
(setq history-length 3000)
(fset 'yes-or-no-p 'y-or-n-p)

;;; key settings
(setq kill-whole-line t)
(global-set-key "\C-z" 'scroll-down)
(global-set-key "\C-l" 'goto-line)
(global-set-key "\C-h" 'delete-backward-char)
;;(global-set-key (kbd "\C-.") 'scroll-up-line)
;;(global-set-key (kbd "\C-,") 'scroll-down-line)

;;;; file settings
(global-font-lock-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)


;;; load-path
(let ((default-directory (expand-file-name "~/.emacs.d/lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

;;; dired
;(setq ls-lisp-dirs-first t)
(setq dired-listing-switches "-lAF")
(setq dired-auto-revert-buffer t)


;;; dired-subtree (required dash.el)
(require 'dired-subtree)
(define-key dired-mode-map "i" 'dired-subtree-insert)
(define-key dired-mode-map ";" 'dired-subtree-remove)


;;; browser
;;(setq browse-url-browser-function 'browse-url-generic
;;      browse-url-generic-program "firefox")


;;; twittering-mode
(require 'twittering-mode)
(setq twittering-allow-insecure-server-cert t)
(setq twittering-proxy-use t)
(setq twittering-proxy-server "127.0.0.1")
(setq twittering-proxy-port 3128)
;(setq twittering-use-master-password t)
(setq twittering-icon-mode nil)
(setq twittering-timer-interval 300)
