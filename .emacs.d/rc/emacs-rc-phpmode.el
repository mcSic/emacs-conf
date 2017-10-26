;;; $Id$
(load-file "~/.emacs.d/progmodes/php-mode.el")

(load "~/.emacs.d/progmodes/php/symfony1.el")
(load "~/.emacs.d/progmodes/php/symfony2.el")
(load "~/.emacs.d/progmodes/php/php-doc.el")

;;   (message "here php-mrm-indentation")
;; )

(defun php-indentation()
  ;;(setq c-default-style "gnu")
  (setq indent-tabs-mode nil)
  (set (make-local-variable 'tab-width) 2)

  (set (make-local-variable 'c-basic-offset) 2)
  (c-set-offset 'substatement-open 0)
  
  (setq buffer-file-coding-system 'mule-utf-8-unix)

)

(add-hook 'php-mode-hook 'php-indentation)
(add-hook 'php-mode-hook (lambda () (subword-mode 1)))

;;; end of emacs-rc-phpmode.el
