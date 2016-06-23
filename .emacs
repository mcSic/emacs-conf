(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

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

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(load-theme 'solarized t)

(load "~/.emacs.d/rc/emacs-rc-phpmode.el")
(load "~/.emacs.d/rc/emacs-rc-webmode.el")
(load "~/.emacs.d/rc/emacs-rc-js.el")
(load "~/.emacs.d/rc/emacs-rc-css.el")
(load "~/.emacs.d/rc/emacs-rc-yaml.el")
(load "~/.emacs.d/rc/emacs-rc-misc.el")
(load "~/.emacs.d/rc/emacs-rc-bookmarks.el")

(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(scroll-step 1)
 '(show-paren-mode t)
 '(tab-width 2)
 '(transient-mark-mode t)
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key (kbd "C-x v") 'find-file-at-point)

(require 'speedbar)
(speedbar 1)

(global-set-key (kbd "C-M-]") 'other-window)
(defun prev-window ()
  ""
  (interactive
   (other-window -1)))

(global-set-key (kbd "C-M-}") 'prev-window)

(put 'narrow-to-region 'disabled nil)

(add-to-list 'load-path "~/.emacs.d/packages/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/packages/yasnippet/snippets" "~/.emacs.d/snippets"))
(add-to-list 'load-path "~/.emacs.d/packages/php-auto-yasnippets")
(setq php-auto-yasnippets-php-program "~/.emacs.d/packages/yasnippets/snippets/Create-PHP-YASnippet.php")
 (require 'php-auto-yasnippets)

(define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)
(setq php-executable "/usr/bin/php")

(yas-global-mode 1)

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
(setq default-buffer-file-coding-system 'mule-utf-8-dos)
(prefer-coding-system 'mule-utf-8-dos)
(set-terminal-coding-system 'mule-utf-8-dos)
(set-keyboard-coding-system 'mule-utf-8-dos)
(setq-default coding-system-for-read 'mule-utf-8-dos)
(setq-default coding-system-for-write 'mule-utf-8-dos)
(setq selection-coding-system 'mule-utf-8-dos)
(setq default-process-coding-system 'mule-utf-8-dos)
(put-charset-property 'cyrillic-iso8859-5 'preferred-coding-system 'mule-utf-8-dos)


(global-set-key (kbd "C-<tab>") 'next-user-buffer)
(global-set-key (kbd "C-S-<iso-lefttab>") 'previous-user-buffer)
(put 'downcase-region 'disabled nil)

(defun downcase-first-char (str)
  (concat
   (downcase (substring str 0 1))
   (substring str 1))
  )
