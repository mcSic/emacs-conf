;;; Package -- Summary


;;;; Commentary:
;; pkg go installation

;;;; Code:
(setq exec-path (append '("/usr/lib/go/bin") exec-path))
(setenv "PATH" (concat "/usr/lib/go/bin:" (getenv "PATH")))

(use-package go-mode
  :load-path "/home/mkaban/playground/go/src/golang.org/x/lint/misc/emacs"
  
  :config
  (setenv "GOPATH" "/home/maksym_kaban/go")
  (use-package golint)
  (projectile-global-mode 1)
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (use-package go-projectile)
  (go-projectile-tools-add-path)
  (setq gofmt-command (concat go-projectile-tools-path "/bin/goimports"))
  (use-package company
    :config
    ;; Optionally enable completion-as-you-type behavior.
    (setq company-idle-delay 0)
    (setq company-minimum-prefix-length 1))
  (use-package company-go)
  (use-package lsp-mode
    :commands (lsp lsp-deferred)
    :hook (go-mode . lsp-deferred))
  (use-package yasnippet
    :ensure t
    :commands yas-minor-mode
    :hook (go-mode . yas-minor-mode))

  :hook ( on-company-mode )
  )

(defun on-company-mode ()
    (progn
      (company-mode)
      (set (make-local-variable 'company-backends) '(company-go)))
  )

;; (require 'go-mode)

;;(setenv "GOPATH" "/home/mkaban/playground/go")

; As-you-type error highlighting
; (add-hook 'after-init-hook #'global-flycheck-mode)
;; (defun my-go-mode-hook ()
;;       (setq tab-width 2 indent-tabs-mode 1)
;;       ; eldoc shows the signature of the function at point in the status bar.
;;       (go-eldoc-setup)
;;       (local-set-key (kbd "M-.") #'godef-jump)
;;       (add-hook 'before-save-hook 'gofmt-before-save)
;;       ; Customize compile command to run go build
;;       (if (not (string-match "go" compile-command))
;;           (set (make-local-variable 'compile-command)
;;                "go build -v && go test -v && go vet"))
      
;;       ; extra keybindings from https://github.com/bbatsov/prelude/blob/master/modules/prelude-go.el
;;       (let ((map go-mode-map))
;;         (define-key map (kbd "C-c a") 'go-test-current-project) ;; current package, really
;;         (define-key map (kbd "C-c m") 'go-test-current-file)
;;         (define-key map (kbd "C-c .") 'go-test-current-test)
;;         (define-key map (kbd "C-c b") 'go-run)))
;; (add-hook 'go-mode-hook 'my-go-mode-hook)

;;(add-to-list 'load-path "/home/mkaban/playground/go/src/golang.org/x/lint/misc/emacs")
;;(require 'golint)

; Use projectile-test-project in place of 'compile'; assign whatever key you want.
;;(global-set-key [f9] 'projectile-test-project)

; "projectile" recognizes git repos (etc) as "projects" and changes settings
; as you switch between them. 

;; (require 'go-projectile)
;; (go-projectile-tools-add-path)
;; (setq gofmt-command (concat go-projectile-tools-path "/bin/goimports"))

;; ; "company" is auto-completion
;; (require 'company)
;; (require 'company-go)
;; (add-hook 'go-mode-hook (lambda ()
;;                           (company-mode)
;;                           (set (make-local-variable 'company-backends) '(company-go))))

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook (go-mode . lsp-deferred))

;; Set up before-save hooks to format buffer and add/delete imports.
;; Make sure you don't have other gofmt/goimports hooks enabled.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; Optional - provides fancier overlays.
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

;; Company mode is a standard completion package that works well with lsp-mode.
;; (use-package company
;;   :ensure t
;;   :config
;;   ;; Optionally enable completion-as-you-type behavior.
;;   (setq company-idle-delay 0)
;;   (setq company-minimum-prefix-length 1))

;; Optional - provides snippet support.
;; (use-package yasnippet
;;   :ensure t
;;   :commands yas-minor-mode
;;   :hook (go-mode . yas-minor-mode))
