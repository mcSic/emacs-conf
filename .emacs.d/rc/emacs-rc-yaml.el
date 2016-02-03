;;; $Id$
(load-file "~/.emacs.d/progmodes/yaml-mode.el")
(autoload 'yaml-mode "yaml-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;;; end of emacs-rc-yaml.el
