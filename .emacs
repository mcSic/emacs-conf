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
(load "~/.emacs.d/rc/emacs-rc-ecb.el")

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
 '(flycheck-javascript-jshint-executable "/home/mkaban/.nvm/versions/node/v4.4.1/bin/jshint")
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (yasnippet flycheck exec-path-from-shell auto-complete-exuberant-ctags ac-php ac-etags)))
 '(scroll-step 1)
 '(show-paren-mode t)
 '(tab-width 2)
 '(transient-mark-mode t))

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

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (global-set-key (kbd "C-x v") 'find-file-at-point)

;; (global-set-key (kbd "C-M-]") 'other-window)
;; (defun prev-window ()
;;   ""
;;   (interactive
;;    (other-window -1)))

(put 'narrow-to-region 'disabled nil)
(setq php-executable "/usr/bin/php")


(setq yas-snippet-dirs
      '("~/conf/.emacs.d/snippets"))
(require 'yasnippet)
(yas-global-mode 1)


(add-to-list 'load-path "~/conf/.emacs.d/packages/php-auto-yasnippets")
(setq php-auto-yasnippets-php-program "~/conf/.emacs.d/packages/php-auto-yasnippets/Create-PHP-YASnippet.php")
(require 'php-auto-yasnippets)

(define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)


(defun xml-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (mark) (point) "xmllint --format -" (buffer-name) t)
    )
  )

(put 'upcase-region 'disabled nil)

(desktop-save-mode 1)

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

(add-to-list 'load-path "~/.emacs.d/modes/nginx-mode")
(require 'nginx-mode)

(add-to-list 'load-path "/home/mkaban/conf/.emacs.d/multiple-cursors.el")
(require 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(put 'erase-buffer 'disabled nil)

;; (add-to-list 'load-path "/home/mkaban/conf/.emacs.d/elpa/auto-complete-20170124.1845/auto-complete.el")
;; (require 'auto-complete)


(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
;; (use-package flycheck
;;              :ensure t
;;              :init (global-flycheck-mode))

(setq sql-mysql-login-params
      '((user :default "contentinn")
        (database :default "content_inn_prod")
        (password :defaukt "7887")
        (server :default "127.0.0.1")
        (port :default 3300)))

(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))
