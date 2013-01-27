;; Set path to .emacs.d
(setq emacs-dir (file-name-directory
		 (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path emacs-dir)

;; Packages
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Modules directory
(setq modules-dir (file-name-directory
		   (concat emacs-dir "modules/")))
(dolist (f (directory-files
	    (file-name-directory
	     (concat emacs-dir "modules/")) t "[^.]"))
  (add-to-list 'load-path f))

;; ----------
;; Appearance
;; ----------

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

;; ------------
;; Custom files
;; ------------

;; Default behavior
(require 'default-behavior) 


;; ----------------
;; Packages/modules
;; ----------------
(require 'color-theme)
(require 'cyberpunk)


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
