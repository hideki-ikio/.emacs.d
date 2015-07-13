(require 'smartrep)
(global-set-key (kbd "C-q") nil)
(smartrep-define-key 
    global-map "C-q" '(("n" . (scroll-other-window 1))
                       ("p" . (scroll-other-window -1))
                       ("SPC" . 'scroll-other-window)
                       ("b" . (scroll-other-window '-))
                       ("<" . (beginning-of-buffer-other-window 0))
                       (">" . (end-of-buffer-other-window 0))))
