;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(setq byte-compile-warnings '(cl-functions))

(require 'cl)
;; (require 'saveplace)
;; (require 'ffap)
;; (require 'uniquify)
;; (require 'ansi-color)
;; (require 'recentf)

(set-face-attribute 'default nil :height 100)

(column-number-mode)
(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)

(setq make-backup-files nil)

;; (require 'ido)
;; (ido-mode t)


;;(require 'imenu)
;;(global-set-key (kbd "C-x f") 'recentf-ido-find-file)

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
;;(Load-theme 'solarized t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(c-basic-offset 2)
 '(compilation-window-height 10)
 '(custom-enabled-themes '(gruvbox-dark-hard))
 '(custom-safe-themes
   '("4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "78c4238956c3000f977300c8a079a3a8a8d4d9fee2e68bad91123b58a4aa8588" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" default))
 '(ecb-auto-activate t)
 '(ecb-layout-name "mk-left-1")
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons 'mouse-1--C-mouse-1)
 '(ecb-show-sources-in-directories-buffer '("left7" "left13" "left14" "left15" "mk-left-1"))
 '(ecb-source-path
   '(("/var/usr/www/csp.mk" "ContentInn")
     ("/home/mkaban/sandbox/budget" "pet-budget")
     ("/home/mkaban/sandbox/new-search-form" "nsf")
     ("/" "/")
     ("/home/mkaban/playground" "budget-2")
     ("/home/mkaban/playground/budget-2" "budget-2")))
 '(fci-rule-color "#14151E")
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(package-check-signature nil)
 '(package-selected-packages
   '(golint wgrep go-snippets origami treemacs-projectile counsel-projectile ivy gruvbox-theme afternoon-theme dash magit howm rainbow-delimiters command-log-mode helm-projectile projectile flycheck lsp-ui use-package lsp-mode auto-complete highlight-symbol company-go go-projectile xref-js2 company js2-mode typescript-mode yasnippet exec-path-from-shell))
 '(projectile-compile-use-comint-mode t)
 '(scroll-step 1)
 '(show-paren-mode t)
 '(tab-width 2)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#d54e53")
     (40 . "goldenrod")
     (60 . "#e7c547")
     (80 . "DarkOliveGreen3")
     (100 . "#70c0b1")
     (120 . "DeepSkyBlue1")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "goldenrod")
     (200 . "#e7c547")
     (220 . "DarkOliveGreen3")
     (240 . "#70c0b1")
     (260 . "DeepSkyBlue1")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "goldenrod")
     (340 . "#e7c547")
     (360 . "DarkOliveGreen3")))
 '(vc-annotate-very-old-color nil))


(transient-mark-mode t)

(put 'dired-find-alternate-file 'disabled nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(load "~/.emacs.d/rc/emacs-rc-package.el")


;; (load "~/.emacs.d/rc/emacs-rc-phpmode.el")
;; (load "~/.emacs.d/rc/emacs-rc-webmode.el")
;; (load "~/.emacs.d/rc/emacs-rc-css.el")
(load "~/.emacs.d/rc/emacs-rc-yaml.el")
(load "~/.emacs.d/rc/emacs-rc-misc.el")
(load "~/.emacs.d/rc/emacs-rc-bookmarks.el")
(load "~/.emacs.d/rc/emacs-rc-uniquify.el")
(load "~/.emacs.d/rc/emacs-rc-files-buffers.el")
(load "~/.emacs.d/rc/emacs-rc-tramp.el")
(load "~/.emacs.d/rc/emacs-rc-golang.el")

;; (load "~/.emacs.d/rc/emacs-rc-js.el")


(load "~/.emacs.d/rc/emacs-rc-yas.el")

(load "~/.emacs.d/rc/emacs-rc-commands.el")

(load "~/.emacs.d/rc/emacs-rc-enabled-commands.el")

(load "~/.emacs.d/rc/emacs-rc-enabled-commands.el")

(load "~/.emacs.d/rc/emacs-rc-charsets.el")

;; (load "~/.emacs.d/rc/emacs-rc-mcursors.el")

(load "~/.emacs.d/rc/emacs-rc-mysql.el")

;;(add-to-list 'load-path "~/.emacs.d/modes/nginx-mode")
;;(require 'nginx-mode)

(load "~/.emacs.d/rc/emacs-rc-compilation.el")

;; (add-to-list 'load-path "/home/mkaban/conf/.emacs.d/elpa/auto-complete-20170124.1845/auto-complete.el")
;; (require 'auto-complete)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; (require 'flycheck)


;; ;; (load "~/.emacs.d/rc/emacs-rc-ecb.el")
 
;; (global-set-key (kbd "M-x") 'helm-M-x)


;; (use-package helm)

(use-package command-log-mode
  :init)

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package projectile
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map))
  
  )

;; (use-package helm-projectile
;;   :config (helm-projectile-on))

(use-package ivy
  :init
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-re-builders-alist
      '((t . ivy--regex-plus)))
  :config
  (ivy-mode)
  )

(use-package swiper
  :bind
  (("C-s" . swiper-isearch)
   ("C-r" . swiper-backward)
   ("M-x" . counsel-M-x)
   )
  )
(use-package counsel-projectile)

(use-package treemacs-projectile)

(use-package magit)

(use-package wgrep
  :custom
  (wgrep-auto-save-buffer t)
  (wgrep-change-readonly-file t))

(use-package origami
  :demand
  :config
  (define-prefix-command 'origami-mode-map)
  (define-key ctl-x-map (kbd "z") 'origami-mode-map)
  (global-origami-mode)
  :bind
  (:map origami-mode-map
   ("o" . origami-open-node)
   ("O" . origami-open-node-recursively)
   ("c" . origami-close-node)
   ("C" . origami-close-node-recursively)
   ("a" . origami-toggle-node)
   ("A" . origami-recursively-toggle-node)
   ("R" . origami-open-all-nodes)
   ("M" . origami-close-all-nodes)
   ("v" . origami-show-only-node)
   ("k" . origami-previous-fold)
   ("j" . origami-forward-fold)
   ("x" . origami-reset)))


(use-package afternoon-theme
  )
(use-package  gruvbox-theme
  )
