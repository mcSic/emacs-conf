;;; $Id$
(require 'recentf)
(recentf-mode 1)

(require 'saveplace)
(setq-default save-place t)

(delete-selection-mode 1)
(tool-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
;;; end of emacs-rc-misc.el
