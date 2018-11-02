(defun xml-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (mark) (point) "xmllint --format -" (buffer-name) t)
    )
  )
(defun downcase-first-char (str)
  (concat
   (downcase (substring str 0 1))
   (substring str 1))
  )

