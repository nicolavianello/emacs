;-- First of all add the load-path
(setq load-path
      (append '(
		"~/.emacs.d"
                "~/.emacs.d/auctex-11.87"
                "~/.emacs.d/Enhanced-Ruby-Mode"
                "~/.emacs.d/conf"
                ) load-path))

;--------------------
; packages initialization
(load "install-sy")

;; setting for RFX proxy service
(setq url-proxy-services '(("http" . "eproxy2.rfx.local:8080")))
(setq debug-on-error t);*                    -*- emacs-lisp -*-
;; for emacs server start
(server-start)
(add-hook 'after-init-hook 'server-start)

;------------------
;various customization
(load "custom-sy")

;--------------------
; font settings
(load "font-sy")
;--------------------
; Various commands
(load "command-sy")

;--------------------
; Always end a file
; with a newline
(setq require-final-newline t)

;--------------------
; blinks of paranteses
(setq blink-matching-paren t)

;--------------------
; Stop at the end of
; the file, not just
; add lines
(setq next-line-add-newlines nil)
(display-time)

;--------------------
; Enable wheelmouse
; support by default
(require 'mwheel) ; Emacs
(autoload 'toggle-follow-mouse "follow-mouse" "Follow mouse mode")

;--------------------
; Automatocally-wrap-
; lines
(auto-fill-mode t)

;--------------------
; gnuplot
(autoload 'gnuplot-mode "gnuplot" "gnuplot major mode" t)
(autoload 'gnuplot-make-buffer "gnuplot" "open a buffer in gnuplot mode" t)
(setq auto-mode-alist (append '(("\\.gp$" . gnuplot-mode)) auto-mode-alist))

;:*---cc-mode---
(load "cc-sy")


;*-----Pairwise insertion
(setq skeleton-pair t)
(setq skeleton-pair-on-word t) ; apply skeleton trick even in front of a word.
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "$") 'skeleton-pair-insert-maybe)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Begin automatic white-space insertion after comma
;; For more information see:
;; http://ericscrosson.wordpress.com/2013/04/05/minimizing-keystrokes-required-by-punctuation/
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd ",")
                (lambda() (interactive) (insert ", ")))

;:*------IDL--------------
(load "idl-sy")

;;*---------GLE-mode-----------
(autoload 'gle-mode "gle-mode") 
(add-to-list 'auto-mode-alist '("\\.gle\\'" . gle-mode))

;:*------MATLAB MODE -------
(add-to-list 'load-path "~/.emacs.d/matlab-emacs/")
(require 'matlab-load)

;;*---------ASY-mode----------
(load "asy-init")

;;*------- Latex stuff -------
(load "latex-sy")

;;*-------- fortran-mode------
(setq auto-mode-alist
      (append
    '(("\\.ftn$"  . fortran-mode)
      ("\\.for$"  . fortran-mode)
      ("\\.F$"    . fortran-mode)
      ("\\.inc$"  . f90-mode)
      ("\\.pfp$"  . f90-mode)
      ("\\.car$"  . f90-mode)
      ("\\.edt$"  . f90-mode)
      ("\\.F90$"  . f90-mode)
      ("\\.F95$"  . f90-mode)
        )
    auto-mode-alist))


;;*----- auto-install ----------
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
;(auto-install-update-emacswiki-package-name t)
;(setq url-proxy-services '(("http" . "intranet.igi.cnr.it:8080")))


;;*---------anything----------
(require 'anything)
(require 'anything-config)

;*---------- color-theme -----------
;(add-to-list 'default-frame-alist '(alpha . (90 70)))
;(custom-set-variables '(aquamacs-styles-mode t))
(when (require 'color-theme nil t)
    (progn 
      (require 'color-theme)
      (setq color-theme-is-global t)
      (setq color-theme-is-cumulative t)
      (load-theme 'underwater t)
      ))
;*-- ruby-setup --x
(when (require 'ruby-mode nil t)
  (progn
    (load "ruby-sy")))
;; ya-snippet
(add-to-list 'load-path
             "~/.emacs.d/plugins")
(when (require 'yasnippet-bundle nil t)
  (progn 
    (require 'yasnippet-bundle)))

;:*---------org-mode-----------
(when (require 'org-mode nil t)
    (progn (load "org-sy")))

;:*-------- ess-setup ----
(when (require 'ess-site nil t)
  (progn (require 'ess-site)))

;*-----magit ----
(when (require 'magit nil t)
  (progn (require 'magit)))
;*---------- changhing color theme according to day/night *------
(when (require 'theme-changer nil t)
  (progn 
	 (setq calendar-location-name "Padova, Italy") 
	 (setq calendar-latitude 45.24)
	 (setq calendar-longitude 11.52)))

;*---python-setup----
(when (require 'python nil t)
  (progn 
    (load "python-sy")))

;:* That's all folks :-)
