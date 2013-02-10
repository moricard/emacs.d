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
(require 'setup-packages)
(lazy-install
      'yasnippet
      'color-theme
      'magit 	
      'paredit
      'undo-tree
      'clojure-mode
      'nrepl
      'ido-ubiquitous
      'ace-jump-mode
      'js2-mode)

(require 'setup-yasnippet)

;; Visual
(require 'appearance)
(eval-after-load 'color-theme (color-theme-watcher))

;;(require 'magit)
;;(require 'paredit)

;; Undo tree is more powerful
(require 'undo-tree)
(global-undo-tree-mode)

;;(require 'clojure-mode)
;;(require 'nrepl)

;; Setup
(require 'default-behavior)
(require 'setup-ido)
(require 'setup-js2-mode)

(require 'bindings)
