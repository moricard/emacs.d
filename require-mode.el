
(require 'ido)

(defun require-goto-headers ()
  (search-backward-regexp "^define[\s]\(+[\s]*" nil t))

(defun require-goto-function-declaration ()
  (search-forward-regexp "[\s]) {" nil t))

(defun require-goto-headers-declaration ()
  (require-goto-headers)
  (require-goto-function-declaration)
  (backward-char 4))

(defun require-goto-dependency-insert-point ()
  (require-goto-headers)
  (search-forward-regexp "]," nil t)
  (backward-char 2)
)

(defun require-import ()
  "add import to require header"
  (interactive)
  (setq import (ido-read-file-name "Import RequireJS module: "))
  (if (setq index (string-match "collections[/.]*[/]" import))
      (setq import (substring import index))
    (if (setq index (string-match "models[/.]*[/]" import))
        (setq import (substring import index))
      (if (setq index (string-match "views[/.]*[/]" import))
          (setq import (substring import index))
        (if (setq index (string-match "templates[/.]*[/]" import))
            (setq import (substring import index))
          (setq index (string-match "[a-z]+[\.]js$" import))
          (setq import (substring import index))))))
  (message (concat "Adding " import " to dependencies."))

  (save-excursion 
    (require-goto-dependency-insert-point)
    (insert (concat
             ",'" (substring import 0 (string-match ".js$" import)) "'\n    "))
    (require-goto-headers-declaration)
    (insert (concat
             ", " (capitalize (substring import (string-match "[a-z]+[.]" import) (string-match "[.]" import)))))))


(defvar require-mode-map (make-sparse-keymap)
  "require-mode keymap")

(define-minor-mode require-mode
  "Require mode" nil " requireJS" require-mode-map)

(provide 'require-mode)

;;; require-mode.el ends here