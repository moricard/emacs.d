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
      'requirejs-mode
      'js2-mode
      'markdown-mode
      'scala-mode)

(require 'setup-yasnippet)

;; Visual
(require 'appearance)
(eval-after-load 'color-theme (color-theme-watcher))

;;(require 'magit)
;;(require 'paredit)

;; Undo tree is more powerful
(require 'undo-tree)
(global-undo-tree-mode)

;; Magit for mercurial!
(require 'monky)

;; By default monky spawns a seperate hg process for every command.
;; This will be slow if the repo contains lot of changes.
;; if `monky-process-type' is set to cmdserver then monky will spawn a single
;; cmdserver and communicate over pipe.
;; Available only on mercurial versions 1.9 or higher

(setq monky-process-type 'cmdserver)

;;(require 'clojure-mode)
;;(require 'nrepl)

;; Setup
(require 'default-behavior)
(require 'setup-ido)
(require 'setup-js2-mode)
(require 'setup-elisp)

(require 'bindings)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(send-mail-function (quote mailclient-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ediff-even-diff-A ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-even-diff-B ((((class color) (background dark)) (:background "dark red"))))
 '(ediff-odd-diff-A ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-odd-diff-B ((((class color) (background dark)) (:background "dark red"))))
 '(mumamo-background-chunk-major ((((class color) (background dark)) (:background "black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (background dark)) (:background "black")))))
