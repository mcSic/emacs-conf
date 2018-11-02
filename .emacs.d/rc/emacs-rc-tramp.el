(require 'tramp)
;; (setq tramp-default-user "content_inn"
;;        tramp-default-host "88.208.59.160" )
(setq tramp-default-user "mkaban"
     tramp-default-host "172.19.5.222" )
(add-to-list 'tramp-default-user-alist
	     '("ssh" "192.168.40.167" "mkaban")
	     '("ssh" "88.208.59.160" "content_inn")
)
