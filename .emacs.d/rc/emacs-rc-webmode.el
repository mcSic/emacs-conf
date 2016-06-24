(load-file "~/.emacs.d/progmodes/web-mode.el")
(global-set-key (kbd "C-c /") 'web-mode-element-close)

(defun web-mode-indentation-hook ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook 'web-mode-indentation-hook)
