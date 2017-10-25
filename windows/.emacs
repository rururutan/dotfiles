;; Package
(package-initialize)
;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;(package-refresh-contents)

;; Customize/Packge情報は別ファイルに保存
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; 表示設定
(column-number-mode t)
(scroll-bar-mode -1)
(size-indication-mode t)
(tool-bar-mode -1)

;; スペース、タブなどを可視化
;(global-whitespace-mode 1)

;; タブサイズ
(setq default-tab-width 4)

;; ダークモード
(set-frame-parameter nil 'background-mode 'dark)

;; 透過色設定
(add-to-list 'default-frame-alist '(alpha . (0.97 0.97)))

;; 対応する括弧を光らせる
(show-paren-mode t)

;; startupメッセージ消去
(setq inhibit-splash-screen t)
;; scratchメッセージ消去
(setq initial-scratch-message "")

;; GC頻度下げ対策
(setq gc-cons-threshold (* gc-cons-threshold 10))

;; 1行ずつスクロール
(setq scroll-conservatively 1)

;; 画面スクロール時にカーソル表示位置を維持
(setq scroll-preserve-screen-position t)

;; ホイール設定
(setq mouse-wheel-scroll-amount
       '(2                              ; 通常
        ((shift) . 1)                   ; Shift
        ((control) . 10)                ; Ctrl
        ))
(setq mouse-wheel-progressive-speed nil)

;; Key-Binding
(global-set-key [M-kanji] 'ignore)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-c\C-g" 'goto-line)

;; "yes or no"を"y or n"にする
(fset 'yes-or-no-p 'y-or-n-p)

;; Beep鳴らさない
(setq ring-bell-function 'ignore)

;; 終了時にオートセーブファイルを削除
(setq delete-auto-save-files t)

;; 言語設定
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(set-default 'buffer-file-coding-system 'utf-8-with-signature)

;; Line number
(global-linum-mode t)
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))
(setq linum-format "%5d ")

;; 編集時再読み込み
(global-auto-revert-mode 1)

;; ファイル履歴
(setq recentf-max-menu-items 10)
(setq recentf-max-saved-items 20)
(setq recentf-auto-cleanup 'never) 
(recentf-mode 1)

;; ファイル名補完
(ido-mode 1)
(ido-everywhere 1)
(setq ido-enable-flex-matching t)
