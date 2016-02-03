;;; $Id$
;;(autoload 'javascript-mode "~/.emacs.d/progmodes/javascript" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js-mode))

(defun js-mode-indentation ()
  (setq js-indent-level 2)
  )

(add-hook 'js-mode-hook 'js-mode-indentation)

;;; end of emacs-rc-js.el
