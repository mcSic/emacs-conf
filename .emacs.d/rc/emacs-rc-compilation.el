(defun compilation-window-position-and-height ()
  "Make sure that compile window splitting vertically and set its height to 10 lines"
    (when (not (get-buffer-window "*compilation*"))
      (save-selected-window
        (save-excursion

          (let* ((w (split-window-vertically))
                 (h (window-height w)))
            (select-window w)
            (switch-to-buffer "*compilation*")
            (shrink-window (- h 10)))
          )
        )
      )
  )
(add-hook 'comint-mode-hook 'compilation-window-position-and-height)
