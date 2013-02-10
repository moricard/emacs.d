;;Utility functions used in my snippets
(defun un-camelcase-string (s &optional sep start)
  (let ((case-fold-search nil))
    (while (string-match "[A-Z]" s (or start 1))
      (setq s (replace-match (concat (or sep "-") 
                                     (downcase (match-string 0 s))) 
                             t nil s)))
    (downcase s)))

(defun require-def-mirror (s)
  (setq s (un-camelcase-string s))
  (if (string-match "-view" s 0)
      (concat "views/" s)
    (if (string-match "[s]$" s 0)
        (concat "collections/" s)
      (if (string-match "-model" s 0)
          (concat "models/" (substring s 0 (- (string-width s) 6)))
        (if (string-match "-template" s 0)
            (concat "templates/" (substring s 0 (- (string-width s) 9)))

        (replace-regexp-in-string "^[$,]$"   "jquery"
          (replace-regexp-in-string "^[_,]$" "underscore"
          (replace-regexp-in-string "^[h,]$" "handlebars" s))))))))


(eval-after-load 'yasnippet (yas-global-mode 1))
(yas/load-directory (expand-file-name "snippets" user-emacs-directory))

(provide 'setup-yasnippet)
