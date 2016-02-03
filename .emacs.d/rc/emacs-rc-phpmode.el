;;; $Id$
;;(load-file "~/.emacs.d/progmodes/php-mode-exp.el")
;;(load-file "~/.emacs.d/progmodes/php-mode-improved.el")
(load-file "~/.emacs.d/progmodes/php-mode.el")

(defun php-indentation()
  (setq indent-tabs-mode nil)
  (set (make-local-variable 'tab-width) 2)
  (setq buffer-file-coding-system 'mule-utf-8-unix)
  (setq php-template-compatibility nil)
  (c-add-style
   "symfony1"
   '("php"
     (c-basic-offset . 2)
     (statement-cont . +)
     (arglist-cont-nonempty . +)
     ))
  (c-set-style "symfony1")
  (message "test1")
)

(add-hook 'php-mode-hook 'php-indentation)
(add-hook 'php-mode-hook (lambda () (subword-mode 1)))

;;; end of emacs-rc-phpmode.el
