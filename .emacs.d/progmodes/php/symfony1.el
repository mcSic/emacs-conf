(defgroup symfony nil
  "Symfony1 Development."
  :group 'programming)

(defcustom symfony-php-style
  '((c-offsets-alist . ((case-label . +)
                        (arglist-intro . +) ; for FAPI arrays and DBTNG
                        (arglist-cont-nonempty . c-lineup-math) ; for DBTNG fields and values
                        (arglist-close . c-lineup-close-paren) ; correct arglist closing parenthesis
                        )))
  "PSR coding style."
  :group 'symfony)

(define-derived-mode symfony1-mode
  php-mode "Sf1"
  "Major mode for working with Symfony1.
\\{symfony1-mode-map}"
  (c-set-style "symfony-php-style")
  (set 'tab-width 2)
  (set 'c-basic-offset 2)
  (set 'indent-tabs-mode nil))

(c-add-style "symfony-php-style" symfony-php-style)

(provide 'symfony1-mode)


