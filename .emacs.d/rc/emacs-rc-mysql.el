(setq sql-mysql-login-params
      '((user :default "contentinn")
        (database :default "content_inn_prod")
        (password :default "7887")
        (server :default "127.0.0.1")
        (port :default 3300)))

(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

