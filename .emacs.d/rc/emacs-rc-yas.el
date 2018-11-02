(setq yas-snippet-dirs
      '("~/conf/.emacs.d/snippets"))
(require 'yasnippet)
(yas-global-mode 1)


(add-to-list 'load-path "~/conf/.emacs.d/packages/php-auto-yasnippets")
(setq php-auto-yasnippets-php-program "~/conf/.emacs.d/packages/php-auto-yasnippets/Create-PHP-YASnippet.php")
(require 'php-auto-yasnippets)

(define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)

