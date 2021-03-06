;; packages

(require 'package)

(add-to-list 'package-archives
    '("marmalade" . "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
  '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

;; lazy-installation for elpackages
(defun lazy-install (&rest packages)
  (mapc (lambda (package)
	  (when (not (package-installed-p package))
	    (package-install package)))
	packages)
  (package-initialize)
  (delete-other-windows))

(provide 'setup-packages)
