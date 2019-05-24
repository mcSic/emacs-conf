;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

(set-face-attribute 'default nil :height 100)

(global-linum-mode 1)

(setq make-backup-files nil)

(require 'ido)
(ido-mode t)

;;(require 'imenu)
;;(global-set-key (kbd "C-x f") 'recentf-ido-find-file)

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
;;(Load-theme 'solarized t)

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
 '(ecb-source-path
   (quote
    (("/var/usr/www/csp.mk" "ContentInn")
     ("/home/mkaban/sandbox/budget" "pet-budget")
     ("/home/mkaban/sandbox/new-search-form" "nsf")
     ("/" "/")
     ("/home/mkaban/playground" "budget-2")
     ("/home/mkaban/playground/budget-2" "budget-2"))))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(package-check-signature nil)
 '(package-selected-packages
   (quote
    (highlight-symbol helm-projectile company-go go-projectile xref-js2 company helm js2-mode typescript-mode yasnippet exec-path-from-shell auto-complete-exuberant-ctags ac-php ac-etags)))
 '(scroll-step 1)
 '(show-paren-mode t)
 '(tab-width 2))


(transient-mark-mode t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load "~/.emacs.d/rc/emacs-rc-phpmode.el")
(load "~/.emacs.d/rc/emacs-rc-webmode.el")
(load "~/.emacs.d/rc/emacs-rc-css.el")
(load "~/.emacs.d/rc/emacs-rc-yaml.el")
(load "~/.emacs.d/rc/emacs-rc-misc.el")
(load "~/.emacs.d/rc/emacs-rc-bookmarks.el")
(load "~/.emacs.d/rc/emacs-rc-uniquify.el")
(load "~/.emacs.d/rc/emacs-rc-files-buffers.el")
(load "~/.emacs.d/rc/emacs-rc-tramp.el")
(load "~/.emacs.d/rc/emacs-rc-golang.el")

;; (load "~/.emacs.d/rc/emacs-rc-js.el")

(load "~/.emacs.d/rc/emacs-rc-package.el")

(load "~/.emacs.d/rc/emacs-rc-yas.el")

(load "~/.emacs.d/rc/emacs-rc-commands.el")

(load "~/.emacs.d/rc/emacs-rc-enabled-commands.el")

(load "~/.emacs.d/rc/emacs-rc-enabled-commands.el")

(load "~/.emacs.d/rc/emacs-rc-charsets.el")

(load "~/.emacs.d/rc/emacs-rc-mcursors.el")

(load "~/.emacs.d/rc/emacs-rc-mysql.el")

;;(add-to-list 'load-path "~/.emacs.d/modes/nginx-mode")
;;(require 'nginx-mode)


;; (add-to-list 'load-path "/home/mkaban/conf/.emacs.d/elpa/auto-complete-20170124.1845/auto-complete.el")
;; (require 'auto-complete)


(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(require 'flycheck)

;; (desktop-save-mode 1)

;; ;; (load "~/.emacs.d/rc/emacs-rc-ecb.el")
 
;; (global-set-key (kbd "M-x") 'helm-M-x)
