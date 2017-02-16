(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

(set-face-attribute 'default nil :height 100)

(global-linum-mode 1)

(require 'tramp)
;; (setq tramp-default-user "content_inn"
;;        tramp-default-host "88.208.59.160" )
(setq tramp-default-user "mkaban"
     tramp-default-host "172.19.5.222" )
(add-to-list 'tramp-default-user-alist
	     '("ssh" "192.168.40.167" "mkaban")
	     '("ssh" "88.208.59.160" "content_inn")
)

(require 'ido)
(ido-mode t)

;;(require 'imenu)
;;(global-set-key (kbd "C-x f") 'recentf-ido-find-file)

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
;;(Load-theme 'solarized t)

(load "~/.emacs.d/rc/emacs-rc-phpmode.el")
(load "~/.emacs.d/rc/emacs-rc-webmode.el")
(load "~/.emacs.d/rc/emacs-rc-js.el")
(load "~/.emacs.d/rc/emacs-rc-css.el")
(load "~/.emacs.d/rc/emacs-rc-yaml.el")
(load "~/.emacs.d/rc/emacs-rc-misc.el")
(load "~/.emacs.d/rc/emacs-rc-bookmarks.el")
(load "~/.emacs.d/rc/emacs-rc-uniquify.el")
(load "~/.emacs.d/rc/emacs-rc-files-buffers.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(ecb-auto-activate t)
 '(ecb-layout-name "mk-left-1")
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
 '(ecb-show-sources-in-directories-buffer (quote ("left7" "left13" "left14" "left15" "mk-left-1")))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(scroll-step 1)
 '(show-paren-mode t)
 '(tab-width 2)
 '(transient-mark-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (require 'speedbar)
;; (speedbar 1)

(put 'narrow-to-region 'disabled nil)

(add-to-list 'load-path "~/.emacs.d/packages/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/packages/yasnippet/snippets" "~/.emacs.d/snippets"))
;;(add-to-list 'load-path "~/.emacs.d/packages/php-auto-yasnippets")
;;(setq php-auto-yasnippets-php-program "~/.emacs.d/packages/php-auto-yasnippets/Create-PHP-YASnippet.php")
;;(require 'php-auto-yasnippets)

(define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)
(setq php-executable "/usr/bin/php")

(yas-global-mode 1)

(defun xml-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (mark) (point) "xmllint --format -" (buffer-name) t)
    )
  )

(put 'upcase-region 'disabled nil)

(desktop-load-default)
(desktop-save-mode t)

(set-language-environment 'UTF-8)
(setq default-buffer-file-coding-system 'mule-utf-8-unix)
(prefer-coding-system 'mule-utf-8-unix)
(set-terminal-coding-system 'mule-utf-8-unix)
(set-keyboard-coding-system 'mule-utf-8-unix)
(setq-default coding-system-for-read 'mule-utf-8-unix)
(setq-default coding-system-for-write 'mule-utf-8-unix)
(setq selection-coding-system 'mule-utf-8-unix)
(setq default-process-coding-system 'mule-utf-8-unix)
(put-charset-property 'cyrillic-iso8859-5 'preferred-coding-system 'mule-utf-8-unix)


(global-set-key (kbd "C-<tab>") 'next-user-buffer)
(global-set-key (kbd "C-S-<iso-lefttab>") 'previous-user-buffer)
(put 'downcase-region 'disabled nil)

(defun downcase-first-char (str)
  (concat
   (downcase (substring str 0 1))
   (substring str 1))
  )

;;(add-to-list 'load-path "~/.emacs.d/modes/nginx-mode")
;;(require 'nginx-mode)

(add-to-list 'load-path "/home/mkaban/conf/.emacs.d/ecb")
(require 'ecb)
;;(ecb-activate)

;; (add-to-list 'load-path "/home/mkaban/conf/.emacs.d/multiple-cursors.el")
;; (require 'multiple-cursors)

;; (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; (global-set-key (kbd "C->") 'mc/mark-next-like-this)
;; (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "https://melpa.org/packages/")
   t)
  (package-initialize))
  
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(put 'erase-buffer 'disabled nil)

;; (add-to-list 'load-path "/home/mkaban/conf/.emacs.d/elpa/auto-complete-20170124.1845/auto-complete.el")
;; (require 'auto-complete)
