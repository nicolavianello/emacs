;/------ Conditionally check if emacs is 24 or 23. If 23
; it is needed the package.el packaged available at http://bit.ly/pkg-el23
(when (>= emacs-major-version 23)

  (when (<= emacs-major-version 24)
    (require 'package)
    )

  (setq package-archives '(
                           ("marmalade" . "http://marmalade-repo.org/packages/")
			   ("org" . "http://orgmode.org/elpa/")
			   ("melpa" . "http://melpa.milkbox.net/packages/")
                           ))

  (package-initialize)
  )



