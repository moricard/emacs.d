;; Set path to .emacs.d
(setq emacs-dir (file-name-directory
		 (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path emacs-dir)


;;Appearance
;; Solarized colors
(add-to-list 'custom-theme-load-path "~/.emacs.d/modules/solarized-colors")
(load-theme 'solarized-dark t)

;; Highlight current line
(global-hl-line-mode 1)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; No menu bars
(menu-bar-mode -1)

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b"))))

;; Ditch them scrollbars
(scroll-bar-mode -1)




;; Default behavior
(require 'default-behavior) 







(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
