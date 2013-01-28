;; Marc-Olivier Ricard 2013

;; No Splash
(setq inhibit-startup-message t)

;; Files and Directories
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

(setq modules-dir 
      (file-name-directory 
       (concat user-emacs-directory "modules/")))

(dolist (module (directory-files modules-dir t "[^.]"))
  (add-to-list 'load-path module))

(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

;; OSX or linux?
(setq is-osx (equal system-type 'darwin))

;; Packages/modules
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'yasnippet)        ; Snippets
(yas-global-mode 1)

(require 'color-theme)      ; Color-themes manager
(color-theme-cyberpunk)

(require 'magit)
(require 'paredit)
(require 'undo-tree)
(require 'clojure-mode)
(require 'nrepl)

;; installed
; nrepl
; clojure-mode

;; Setup
(require 'default-behavior)
(require 'bindings)
(require 'appearance)
(require 'setup-ido)

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
