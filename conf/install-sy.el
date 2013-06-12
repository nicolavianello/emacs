;/------ Conditionally check if emacs is 24 or 23. If 23
; it is needed the package.el packaged available at http://bit.ly/pkg-el23
(if (>= emacs-major-version 24)
    (progn
      (require 'package)
      (setq package-archives '(
					;    ("ELPA" . "http://tromey.com/elpa/")
					;    ("gnu" . "http://elpa.gnu.org/packages/")
			       ("marmalade" . "http://marmalade-repo.org/packages/")
			       ("org" . "http://orgmode.org/elpa/")
			       ("melpa" . "http://melpa.milkbox.net/packages/")))
      (package-initialize)
      )
  (require 'package)
  ;; Any add to list for package-archives (to add marmalade or melpa) goes here
  (add-to-list 'package-archives 
	       '("marmalade" . "http://marmalade-repo.org/packages/")
	       '("org" . "http://orgmode.org/elpa/")
	       '("melpa" . "http://melpa.milkbox.net/packages/"))
  (package-initialize)  ;; Do something else for Emacs 23 or less
)
