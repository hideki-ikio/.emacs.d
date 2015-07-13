;; goto-line
(global-set-key "\C-c\C-g" 'goto-line)

;; other-window
(global-set-key "\C-o" 'other-window)

;; eval-buffer
(global-set-key [f7] 'eval-buffer)

;; preview md
(global-set-key [f5] 'markdown-export-and-preview)

;; toggle truncate-lines
(global-set-key (kbd "C-c t") 'toggle-truncate-lines)

;; disable iconify
(global-set-key (kbd "C-z") nil)
