;;; $Id$
;; (autoload 'css-mode "css-mode" nil t)
;; (add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))

(autoload 'css-mode "css-mode")
(setq auto-mode-alist       
  (cons '("\\.css\\'" . css-mode) auto-mode-alist))


;;; end of emacs-rc-css.el
