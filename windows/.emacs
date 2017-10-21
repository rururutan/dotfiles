(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(current-language-environment "Japanese")
 '(line-number-mode nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Startupメッセージ消去
(setq inhibit-splash-screen t)

;; GC頻度下げ対策
(setq gc-cons-threshold (* gc-cons-threshold 10))

;; 1行ずつスクロール
(setq scroll-conservatively 1)

;; 画面スクロール時にカーソル表示位置を維持
(setq scroll-preserve-screen-position t)

(setq mouse-wheel-scroll-amount
       '(3                              ; 通常
        ((shift) . 1)                   ; Shift
        ((control) . 40)                ; Ctrl
        ))

;; Key-Binding
(global-set-key [M-kanji] 'ignore)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-c\C-g" 'goto-line)

;; "yes or no"を"y or n"にする
(fset 'yes-or-no-p 'y-or-n-p)

(setq ring-bell-function 'ignore)

;; Line number
(custom-set-variables
 '(global-linum-mode t))
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))
(setq linum-format "%5d ")
