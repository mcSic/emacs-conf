(global-set-key (kbd "C-x v") 'find-file-at-point)

(global-set-key (kbd "C-M-]") 'other-window)
(defun prev-window ()
  ""
  (interactive
   (other-window -1)))

(global-set-key (kbd "C-M-}") 'prev-window)

(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME"
  (interactive 
   (progn
	 (if (not (buffer-file-name))
		 (error "Buffer '%s' is not visiting any file!" (buffer-name)))
	 (list (read-file-name (format "Rename %s to: " (file-name-nondirectory
													 (buffer-file-name)))))))
  (if (equal new-name "")
	  (error "Aborted rename"))
  (setq new-name (if (file-directory-p new-name)
					 (expand-file-name (file-name-nondirectory
										(buffer-file-name))
									   new-name)
				   (expand-file-name new-name)))
  (if (file-exists-p (buffer-file-name))
	  (rename-file (buffer-file-name) new-name 1))
  (let ((was-modified (buffer-modified-p)))
	(set-visited-file-name new-name)
	(if was-modified
		(save-buffer)
	  (set-buffer-modified-p nil))
	(message "Renamed to %s" new-name)))

