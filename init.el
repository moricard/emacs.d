;; Marc-Olivier Ricard 2013

;; No Splash
(setq inhibit-startup-message t)

;; Font
(set-face-attribute 'default nil :font "DejaVu Sans Mono:pixelsize=12:antialias=true")

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
              'edit-server
              'yasnippet
              'color-theme
              'magit
              'paredit
              'undo-tree
              'clojure-mode
              'ido-ubiquitous
              'ace-jump-mode
              'js2-mode
              'markdown-mode
              'scala-mode
              'haskell-mode
              'less-css-mode)


;; Evaluate code in the browser
;; (require 'wooky)


;; Serveur pour editer avec emacs les text-edits dans chrome
(require 'edit-server)
(setq edit-server-new-frame 1)
(edit-server-start)

;; Mode java
(require 'cedet)
(require 'semantic)
(load "semantic/loaddefs.el")
(semantic-mode 1);;
;;(require 'malabar-maode)
;;(add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))

;; Auto-complete
;;(require 'auto-complete)
;;(require 'auto-complete-config)

;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20140414.2324/ac-dict")

;;(ac-config-default)

;;(set-default 'ac-sources
;;             '(ac-source-abbrev
;;               ac-source-dictionary
;;               ac-source-yasnippet
;;               ac-source-words-in-buffer
;;               ac-source-words-in-same-mode-buffers
;;               ac-source-semantic))

;;(add-hook 'malabar-mode-hook 'auto-complete-mode)

(require 'setup-yasnippet)

;; Visual
(require 'appearance)
(eval-after-load 'color-theme (color-theme-watcher))

(require 'magit)
(require 'paredit)

;;haskell setup
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil)
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(send-mail-function (quote mailclient-send-it)))

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

(require 'clojure-mode)
;; (require 'nrepl)

;; Setup
(require 'default-behavior)
(require 'setup-ido)
(require 'setup-js2-mode)
(require 'setup-elisp)

;; Setup less mode
(add-hook 'css-mode-hook
          '(lambda ()
             (setq css-indent-offset 2)))

(require 'bindings)

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

;; Start emacs server
(server-start)
(put 'downcase-region 'disabled nil)
