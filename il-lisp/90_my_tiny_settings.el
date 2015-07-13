;; insert datetime
(defun insert-current-time()
  (interactive)
  (insert (format-time-string "%Y/%m/%d(%a) %H:%M:%S" (current-time))))

(global-set-key "\C-x\C-d" 'insert-current-time)
