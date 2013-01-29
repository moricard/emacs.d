;; Watcher Color Theme
;;
;; Inspired by Darcula from intelliJ Idea 12 and Cyberpunk from Sam Aaron.
;;
;;

(require 'color-theme)

;;;###autoload
(defun color-theme-watcher ()
  "Watcher color-theme by Marc-O. Ricard, inspired by cyberpunk from Sam Aaron and Darcula from intelliJ"
  (interactive)
  (color-theme-install
   '(color-theme-watcher
     ((background-color . "#222222")
      (background-mode . dark)
      (border-color . "#222222")
      (cursor-color . "#96CBFE")
      (foreground-color . "#cccccc")
      (mouse-color . "sienna1"))

     (default ((t (:background "#222222" :foreground "light gray"))))
     (blue ((t (:foreground "blue"))))
     (bold ((t (:bold t))))
     (bold-italic ((t (:bold t))))
     (border-glyph ((t (nil))))
     (buffers-tab ((t (:background "#0C1021" :foreground "#F8F8F8"))))


     (font-lock-builtin-face ((t (:foreground "#ccff66"))))
     (font-lock-comment-face ((t (:italic t :foreground "#669966"))))
     (font-lock-constant-face ((t (:foreground "#4c83ff"))))
     (font-lock-doc-string-face ((t (:foreground "#ccff66"))))
     (font-lock-function-name-face ((t (:foreground "deep pink"))))
     (font-lock-keyword-face ((t (:foreground "#ff6444"))))
     (font-lock-preprocessor-face ((t (:foreground "gray57"))))
     (font-lock-reference-face ((t (:foreground "medium slate blue"))))
     (font-lock-reference-face ((t (:foreground "gray"))))
     (font-lock-regexp-grouping-backslash ((t (:foreground "#E9C062"))))
     (font-lock-regexp-grouping-construct ((t (:foreground "red"))))
     (font-lock-string-face ((t (:foreground "#66cc66"))))
     (font-lock-type-face ((t (:foreground "deep pink"))))
     (font-lock-variable-name-face ((t (:foreground "#66ccff"))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink"))))

     (gui-element ((t (:background "#333333" :foreground "#96CBFE"))))
     (region ((t ( :background "#7F073F"))))
     (mode-line ((t (:background "#151515" :foreground "#66cc66"))))
     (linum ((t (:background: "#333333" :foreground "#557755"))))
     (mode-line-inactive ((t (:background "#222222" :foreground "#444444"))))

     (highlight ((t (:background "DarkOrange"))))
     (isearch ((t (:background "deep pink" :foreground "black"))))
     (isearch-fail ((t (:background "red4" :foreground "black"))))
     (lazy-highlight ((t (:background "#555555" :foreground "#ff6444"))))
     (query-replace ((t (:background "#444444"))))
     (Highline-face ((t (:background "SeaGreen"))))
     (hl-line ((t (:background "#333333"))))
     (italic ((t (nil))))
     (left-margin ((t (nil))))
     (text-cursor ((t (:background "yellow" :foreground "black"))))
     (toolbar ((t (nil))))
     (underline ((nil (:underline nil))))
     (vertical-border ((t (:background "black" :foreground "#333333"))))

     (diff-added ((t (:foreground "#669966"))))
     (diff-removed ((t (:foreground "red4"))))

     (magit-diff-add ((t (:foreground "#669966"))))
     (magit-diff-del ((t (:foreground "red4"))))
     (magit-item-highlight ((t (:background "#444444"))))
     (magit-section-title ((t (:foreground "deep pink"))))
     (magit-diff-hunk-header ((t (:foreground "orange"))))
     (magit-branch ((t (:foreground "gold"))))

     (eval-sexp-fu-flash ((t (:background "grey15" :foreground "DeepPink3"))))
     (nrepl-eval-sexp-fu-flash ((t (:background "grey15" :foreground "DeepPink3"))))

     (ac-completion-face ((t (:foreground "darkgray" :underline t))))
     (ac-candidate-face ((t (:background "gray60" :foreground "black"))))
     (ac-selection-face ((t (:background "deep pink" :foreground "black"))))
     (ac-yasnippet-candidate-face ((t (:background "gray60" :foreground "black"))))
     (ac-yasnippet-selection-face ((t (:background "deep pink" :foreground "black"))))
     (popup-isearch-match ((t (:background "black" :foreground "deep pink"))))
     (popup-tip-face ((t (:background "#333333" :foreground "white"))))
     (popup-scroll-bar-foreground-face ((t (:background "#0A0A0A"))))
     (popup-scroll-bar-background-face ((t (:background "#333333"))))

     (window-number-face ((t (:background "grey10" :foreground "#4c83ff"))))

     (yas/field-highlight-face ((t (:background "deep pink" :foreground "black"))))

     (show-paren-match-face ((t (:background "deep pink" :foreground "black"))))

     (naeu-green-face ((t (:foreground "green" :background "black"))))
     (naeu-pink-face ((t (:foreground "deep pink" :background "black"))))
     (naeu-blue-face ((t (:foreground "medium slate blue" :background "black"))))
     (naeu-orange-face ((t (:foreground "#FBDE2D" :background "black"))))
     (naeu-red-face ((t (:foreground "orange" :background "black"))))
     (naeu-grey-face ((t (:foreground "gray30" :background "black"))))

     (ido-first-match ((t (:foreground "deep pink" :background "#222222"))))
     (ido-only-match ((t (:foreground "deep pink" :background "#222222"))))
     (ido-subdir ((t (:foreground "gray60" :background "black"))))
     (ido-indicator ((t (:foreground "black" :background "deep pink"))))

     (match ((t (:foreground "deep pink" :background "blackn"))))
     (minibuffer-prompt ((t (:foreground "#61CE3C" :background "black"))))
     (grep-match-face ((t (:foreground "black" :background "deep pink"))))
     (grep-hit-face ((t (:foreground "black" :background "red"))))
     (grep-context-face ((t (:foreground "black" :background "deep pink"))))

     (rainbow-delimiters-depth-1-face ((t (:foreground "dark red"))))
     (rainbow-delimiters-depth-2-face ((t (:foreground "dark green"))))
     (rainbow-delimiters-depth-3-face ((t (:foreground "deep pink"))))
     (rainbow-delimiters-depth-4-face ((t (:foreground "yellow"))))
     (rainbow-delimiters-depth-5-face ((t (:foreground "green"))))
     (rainbow-delimiters-depth-6-face ((t (:foreground "light blue"))))
     (rainbow-delimiters-depth-7-face ((t (:foreground "orange"))))
     (rainbow-delimiters-depth-8-face ((t (:foreground "slate blue"))))
     (rainbow-delimiters-depth-9-face ((t (:foreground "light gray"))))
     (rainbow-delimiters-unmatched-face ((t (:foreground "white"))))

     (erc-notice-face ((t (:bold t :foreground "grey26"))))

     (erc-action-face ((t (:foreground "#FF6400"))))
     (erc-current-nick-face ((t (:foreground "#FBDE2D"))))
     (erc-dangerous-host-face ((t (:foreground "red"))))
     (erc-default-face ((t (:foreground "#61CE3C"))))
     (erc-direct-msg-face ((t (:foreground "orange"))))
     (erc-error-face ((t (:foreground "red"))))
     (erc-fool-face ((t (:foreground "dim gray"))))
     (erc-header-line ((t (:background "grey90" :foreground "grey20"))))
     (erc-input-face ((t (:foreground "#4c83ff"))))
     (erc-inverse-face ((t (:background "Black" :foreground "White"))))
     (erc-keyword-face ((t (:foreground "deep pink"))))
     (erc-my-nick-face ((t (:bold t :foreground "deep pink" ))))
     (erc-nick-default-face ((t (:foreground "grey57"))))
     (erc-nick-msg-face ((t (:foreground "deep pink"))))

     (erc-pal-face ((t (:bold t :foreground "Magenta" :weight bold))))
     (erc-prompt-face ((t (:bold t :background "lightBlue2" :foreground "Black" :weight bold))))
     (erc-timestamp-face ((t (:foreground "dim gray"))))
     (erc-underline-face ((t (:underline t))))

     (vhl/default-face ((t (:background "#333333"))))
     (undo-tree-visualizer-active-branch-face ((t (:foreground "deep pink" :background "black"))))
     (hl-sexp-face ((t (:background "grey9"))))

     (browse-kill-ring-current-entry-face ((t (:background "#333333"))))

     (markdown-link-face ((t (:foreground "#FBDE2D"))))
     (markdown-url-face ((t (:foreground  "#61CE3C"))))
     (markdown-bold-face ((t (:foreground "#FF6400"))))
     (markdown-italic-face ((t (:italic t :foreground "#FF6400"))))
     (markdown-pre-face ((t (:foreground "#4c83ff"))))
     (markdown-inline-code-face ((t (:foreground "#4c83ff"))))
     (markdown-list-face ((t (:foreground "#8B8989"))))
     )
   )



  (custom-set-faces

   ;;nXhtml colours
   '(mumamo-background-chunk-major ((((class color) (background dark)) (:background "black"))))
   '(mumamo-background-chunk-submode1 ((((class color) (background dark)) (:background "black"))))

   ;;ediff
   '(ediff-even-diff-A ((((class color) (background dark)) (:background "dark green"))))
   '(ediff-odd-diff-A ((((class color) (background dark)) (:background "dark green"))))
   '(ediff-odd-diff-B ((((class color) (background dark)) (:background "dark red"))))
   '(ediff-even-diff-B ((((class color) (background dark)) (:background "dark red"))))
   ))

(provide 'watcher)
