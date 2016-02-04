(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

(global-linum-mode 1)
(ido-mode t)

(load "~/.emacs.d/rc/emacs-rc-view.el")
;;(load "~/.emacs.d/rc/emacs-rc-cedet.el")
;;(load "~/.emacs.d/rc/emacs-rc-ecb.el")
(load "~/.emacs.d/rc/emacs-rc-tramp.el")
(load "~/.emacs.d/rc/emacs-rc-mule.el")
;;(load "~/.emacs.d/rc/emacs-rc-mule-unix.el")
(load "~/.emacs.d/rc/emacs-rc-buffers.el")
;;(load "~/.emacs.d/rc/emacs-rc-gnus.el")
(load "~/.emacs.d/rc/emacs-rc-defaultcontent.el")
;;(load "~/.emacs.d/rc/emacs-rc-geben.el")
(load "~/.emacs.d/rc/emacs-rc-bookmarks.el")
;;Programming languages
(load "~/.emacs.d/rc/emacs-rc-js.el")
;; (load "~/.emacs.d/rc/emacs-rc-html.el")
(load "~/.emacs.d/rc/emacs-rc-web.el")
(load "~/.emacs.d/rc/emacs-rc-yaml.el")
(load "~/.emacs.d/rc/emacs-rc-ccmode.el")
(load "~/.emacs.d/rc/emacs-rc-phpmode.el")
(load "~/.emacs.d/rc/emacs-rc-ruby.el")
;;Misc
(load "~/.emacs.d/rc/emacs-rc-w3m.el")
(load "~/.emacs.d/rc/emacs-rc-misc.el")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ange-ftp-try-passive-mode t)
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(ecb-auto-compatibility-check t)
 '(ecb-layout-name "left15")
 '(ecb-options-version "2.32")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-show-sources-in-directories-buffer (quote ("left7" "left13" "left14" "left15")))
 '(ecb-source-path (quote (("/home/maksik/projects/nata/htdocs" "nata") ("/home/maksik/projects/amadoka/htdocs" "amadoka") ("/home/maksik/projects/breinex/htdocs" "breinex") ("/home/maksik/projects/doctor" "doctor") ("/home/maksik/projects/Denis-help" "Denis-help") ("/home/maksik/sandbox/koans" "koans"))))
 '(ecb-tip-of-the-day nil)
 '(ecb-tree-buffer-style (quote image))
 '(ecb-tree-image-icons-directories (quote ("~/.emacs.d/lisp/ecb/ecb-images/default/height-17" (ecb-directories-buffer-name . "~/.emacs.d/lisp/ecb/ecb-images/directories/height-17") (ecb-sources-buffer-name . "~/.emacs.d/lisp/ecb/ecb-images/sources/height-14_to_21") (ecb-methods-buffer-name . "~/.emacs.d/lisp/ecb/ecb-images/methods/height-14_to_21"))))
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(make-backup-files nil)
 '(scroll-step 1)
 '(show-paren-mode t)
 '(tab-width 4)
 '(transient-mark-mode t)
 '(truncate-partial-width-windows nil)
 '(uniquify-buffer-name-style (quote reverse) nil (uniquify))
 '(uniquify-ignore-buffers-re "^\\*")
 '(uniquify-separator "/"))


(desktop-load-default)
(desktop-save-mode t)
;;(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;; )

(defun toggle-php-html-mode()
  (interactive)
 ;; (mode-name)
   (cond ((equal mode-name '(sgml-xml-mode "XHTML" "HTML"))
   		 (php-mode))
   		((string= mode-name "PHP")
   		 (html-mode)))

)

(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME"
  (interactive 
   (progn
	 (if (not (buffer-file-name))
		 (error "Buffer '%s' is not visiting any file!" (buffer-name)))
	 (list (read-file-name (format "Rename %s to: " (file-name-nondirectory
													 (buffer-file-name)))))))
  (if (equal new-name "")
	  (error "Aborted rename"))
  (setq new-name (if (file-directory-p new-name)
					 (expand-file-name (file-name-nondirectory
										(buffer-file-name))
									   new-name)
				   (expand-file-name new-name)))
  (if (file-exists-p (buffer-file-name))
	  (rename-file (buffer-file-name) new-name 1))
  (let ((was-modified (buffer-modified-p)))
	(set-visited-file-name new-name)
	(if was-modified
		(save-buffer)
	  (set-buffer-modified-p nil))
	(message "Renamed to %s" new-name)))
  

(global-set-key [f5] 'toggle-php-html-mode)




;; SBCL
;; (setq inferior-lisp-program "/usr/local/bin/sbcl") ; your Lisp system
;; (setq slime-lisp-implementations '((sbcl ("sbcl"))))
;; (setq slime-startup-animation nil)
;; SLIME
;; (add-to-list 'load-path "~/sandbox/web-lisp/slime-2011-01-11") ;; Путь к slime
;; (require 'slime)
;; (setq slime-net-coding-system 'utf-8-unix)
;; (slime-setup '(slime-fancy))
;; (setq slime-enable-evaluate-in-emacs t)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path
              "~/.emacs.d/yasnippet")
(require 'yasnippet)
(add-to-list 'yas-snippet-dirs "~/.emacs.d/yasnippet-extra-modes/yasnippet-php-mode/php-mode")
(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets/php-mode/")
(yas-global-mode 1)

(put 'set-goal-column 'disabled nil)

(global-set-key (kbd "C-M-]") 'other-window)
(put 'downcase-region 'disabled nil)
