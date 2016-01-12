;; Appearance
(require 'cyberpunk)
(require 'watcher)


;; Add column marker
(require 'fill-column-indicator)
(setq-default fci-rule-column 100)
(setq fci-rule-width 1)
(setq fci-rule-color "#333333")

(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode t)))
(global-fci-mode t)


(global-hl-line-mode 1) ;; Highlight current line
(show-paren-mode 1)     ;; Parentheses highlight
(menu-bar-mode -1)      ;; No menu
(scroll-bar-mode -1)    ;; No scroll
(tool-bar-mode -1)      ;; No tools

;; Window title is buffer filename
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b"))))

;; Highlight hex colors
;;https://groups.google.com/forum/?fromgroups=#!topic/gnu.emacs.help/EQTSiulnbAo

(defun hex-colors (limit)
  (remove-overlays (point) limit 'fontify-hex-colors t)
  (while (re-search-forward "\\(#[[:xdigit:]]\\{6\\}\\)" limit t)
    (let ((ov (make-overlay (match-beginning 0)
                            (match-end 0))))
      (overlay-put ov 'face  (list :background (match-string 1) :foreground "black"))
      (overlay-put ov 'fontify-hex-colors t)
      (overlay-put ov 'evaporate t)))
  ;; return nil telling font-lock not to fontify anything from this
  ;; function
  nil)

(defun hex-colours-in-current-buffer ()
  (interactive)
  (font-lock-add-keywords nil
                          '((hex-colors))))

(provide 'appearance)
