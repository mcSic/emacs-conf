;;; $Id$
(defun next-user-buffer()
  "Switch to the next user buffer in cyclic order.\n
User buffers are those not starting with *."
  (interactive)
  (next-buffer)
  (let ((i 0))
    (while (and 
			(string-match "^*" (buffer-name)) 
			(not (string-match "^*slime-repl sbcl" (buffer-name))) 
			(not (string-match "^*info" (buffer-name))) 
			(< i 50))

      (setq i (1+ i)) (next-buffer) )) )

(defun previous-user-buffer()
  "Switch to the previous user buffer in cyclic order.\n
User buffers are those not starting with *."
  (interactive)
  (previous-buffer)
  (let ((i 0))
    (while (and (not (string-match "^*info" (buffer-name))) 
				(string-match "^*" (buffer-name)) (< i 50))
      (setq i (1+ i)) (previous-buffer) )) )
;;; end of smartbuffermanipulation.el
