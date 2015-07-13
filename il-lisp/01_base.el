;; hide bars
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)

;; no auto-backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;; デフォルトで使用する文字コード
(set-default-coding-systems 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
;; キーボードから入力される文字コード
(set-keyboard-coding-system 'utf-8)
;; ターミナルの文字コード
(set-terminal-coding-system 'utf-8)
;; ファイル名の文字コード
(setq file-name-coding-system 'utf-8)

;; インデントはタブ文字。
(setq indent-tabs-mode t)

;; share clipboard with OS
(defun copy-from-osx ()
 (shell-command-to-string "pbpaste"))
(defun paste-to-osx (text &optional push)
 (let ((process-connection-type nil))
     (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
       (process-send-string proc text)
       (process-send-eof proc))))
(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

;; hide startup message
(setq inhibit-startup-message t)

;; initial frame size
(setq default-frame-alist
      (append (list '(width . 200)
	'(height . 60)
	)
	default-frame-alist))

;; linum
(global-linum-mode 1)

;; 折り返ししない
(setq truncate-lines t)

;; 行番号
(line-number-mode t)
;; 桁番号
(column-number-mode t)
