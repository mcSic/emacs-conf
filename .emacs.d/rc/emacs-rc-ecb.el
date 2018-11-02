;;; package --- ECB init config
;;; Commentary:
;;; Code:
(custom-set-variables
 '(ecb-auto-activate t)
 '(ecb-layout-name "mk-left-1")
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
 '(ecb-show-sources-in-directories-buffer (quote ("left7" "left13" "left14" "left15" "mk-left-1")))
)

 (defun display-buffer-at-bottom--display-buffer-at-bottom-around (orig-fun &rest args)
  "Bugfix for ECB: cannot use display-buffer-at-bottom', calldisplay-buffer-use-some-window' instead in ECB frame.  ORIG-FUN ARGS."
  (if ecb-minor-mode (apply 'display-buffer-pop-up-window args) (apply orig-fun args)))

(advice-add 'display-buffer-at-bottom :around #'display-buffer-at-bottom--display-buffer-at-bottom-around)

(add-to-list 'load-path "/home/mkaban/conf/.emacs.d/ecb")
(require 'ecb)
;; (ecb-activate)
;;; emacs-rc-ecb.el ends here

