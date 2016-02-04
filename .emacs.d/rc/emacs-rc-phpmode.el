;;; $Id$
;;(load-file "~/.emacs.d/progmodes/php-mode-exp.el")
(load-file "~/.emacs.d/test/php-mode.el")

;;   (message "here php-mrm-indentation")
;; )

(defun php-indentation()
  ;;(setq c-default-style "gnu")
  (setq indent-tabs-mode nil)
  (set (make-local-variable 'tab-width) 2)
  (c-set-offset 'substatement-open 0)

  (setq buffer-file-coding-system 'mule-utf-8-dos)

)



(add-hook 'php-mode-hook 'php-indentation)

;;; end of emacs-rc-phpmode.el
