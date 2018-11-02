(define-derived-mode symfony2-mode
  php-mode "Sf2"
  "Major mode for working with Symfony2.
\\{symfony2-mode-map}"
  (c-set-style "symfony-php-style")
  (set 'tab-width 4)
  (set 'c-basic-offset 2)
  (set 'indent-tabs-mode nil))

(c-add-style "symfony-php-style" symfony-php-style)

(provide 'symfony2-mode)
