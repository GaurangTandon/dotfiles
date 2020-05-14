(require 'package) ;; You might already have this line
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize) ;; You might already have this line
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil boogie-friends))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq flycheck-dafny-executable "/home/gt/dafny/Dafny.exe")
 
(require 'evil)
(evil-mode 1)

;; disable useless GUI elements
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-splash-screen t)

;; line numbers
(require 'linum-relative)
(setq linum-relative-backend 'display-line-numbers-mode)
(setq linum-relative-current-symbol "")
(linum-relative-global-mode)


;; hl line - highlights the current line on which there is the cursor
(global-hl-line-mode 1)


(require 'powerline-evil)
(powerline-evil-vim-color-theme)

;; Set default font - JetBrains <3
(set-face-attribute 'default nil
                    :family "Jetbrains Mono"
                    :height 100
                    :weight 'normal
                    :width 'normal)

;; set theme
(load-theme 'spacemacs-dark t)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; allows me to downscale images
;; https://emacs.stackexchange.com/questions/26363
(setq org-image-actual-width nil)
