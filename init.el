(add-to-list 'load-path "~/.emacs.d/site-lisp")

(require 'cask)
(cask-initialize)

(custom-set-variables
 '(init-loader-show-log-after-init 'error-only))
 (init-loader-load (concat user-emacs-directory "il-lisp"))
