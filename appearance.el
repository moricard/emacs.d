;; Appearance
(require 'cyberpunk)
;(color-theme-cyberpunk) ;; Nice dark high-contrast color-theme

(global-hl-line-mode 1) ;; Highlight current line
(show-paren-mode 1)     ;; Parentheses highlight
(menu-bar-mode -1)      ;; No menu
(scroll-bar-mode -1)    ;; No scroll
(tool-bar-mode -1)      ;; No tools

;; Window title is buffer filename
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b"))))

;; curent line color
(set-face-background 'hl-line "#202020")

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
