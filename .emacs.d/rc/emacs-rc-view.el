;;; $Id$
(require 'uniquify)

(custom-set-variables 
 '(inhibit-startup-message t)
 '(confirm-kill-emacs 'yes-or-no-p)
 '(scroll-step 1)
 '(uniquify-buffer-name-style 'reverse)
 '(uniquify-separator "/")
 '(uniquify-ignore-buffers-re "^\\*")
)

(tool-bar-mode -1)
(global-hl-line-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)

(set-background-color "white")
;;(set-face-background 'modeline "navajo")
;;(set-face-foreground 'modeline "firebrick")
(setq default-frame-alist
      '(
	(width . 210) (height . 52)
        (cursor-color . "white")
        (cursor-type . box)
))
(set-face-attribute 'default nil
		    :family "Droid Sans" :height 100)

(show-paren-mode 1)
(transient-mark-mode t)
(delete-selection-mode 1)

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;;; end of emacs-rc-view.el
