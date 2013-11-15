(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


(setq auto-mode-alist (cons'("\\.scss$" . css-mode) auto-mode-alist))
(setq auto-mode-alist (cons'("\\.pyx$" . python-mode) auto-mode-alist))
(setq css-indent-offset 2)
(menu-bar-mode -99)

(defun split-2-windows-vertically-evenly ()
  (interactive)
  (command-execute 'split-window-vertically)
  (command-execute 'split-window-vertically)
  (command-execute 'balance-windows)
)

(global-set-key [f2] 'split-2-windows-vertically-evenly) 

(defun split-2-windows-horizontally-evenly ()
  (interactive)
  (command-execute 'split-window-horizontally)
  (command-execute 'split-window-horizontally)
  (command-execute 'balance-windows)
)

(global-set-key [f3] 'split-2-windows-horizontally-evenly)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; set default style to BSD
(setq c-default-style "bsd")