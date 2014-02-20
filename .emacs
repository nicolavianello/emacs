;-- First of all add the load-path
(setq load-path
      (append '(
		"~/.emacs.d"
                "~/.emacs.d/auctex"
                "~/.emacs.d/Enhanced-Ruby-Mode"
                "~/.emacs.d/conf"
                ) load-path))

;--------------------
; packages initialization
(load "install-sy")

;; setting for RFX proxy service
(setq url-proxy-services '(("http" . "eproxy2.rfx.local:8080")))
;(setq url-proxy-services '(("http" . "webcache-2.ccfe.ac.uk:8080")))
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
(when (require 'auto-install nil t)
  (progn
    (require 'auto-install)
    (setq auto-install-directory "~/.emacs.d/auto-install/")
))

;(auto-install-update-emacswiki-package-name t)
;(setq url-proxy-services '(("http" . "intranet.igi.cnr.it:8080")))


;;*---------anything----------
(when (require 'anything nil t)
  (progn
(require 'anything)
(require 'anything-config)
))

;*---------- color-theme -----------
;(add-to-list 'default-frame-alist '(alpha . (90 70)))
;(custom-set-variables '(aquamacs-styles-mode t))
(when (require 'color-theme nil t)
    (progn 
      (require 'color-theme)
      (setq color-theme-is-global t)
      (setq color-theme-is-cumulative t)
;      (load-theme 'underwater t)
      (color-theme-solarized-dark)
;      (color-theme-tomorrow-day)
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
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
;;  '(ansi-color-names-vector (vector "#eaeaea" "#d54e53" "#b9ca4a" "#e7c547" "#7aa6da" "#c397d8" "#70c0b1" "#000000"))
;;  '(aquamacs-styles-mode t)
;;  '(auto-compression-mode t nil (jka-compr))
;;  '(case-fold-search t)
;;  '(column-number-mode t)
;;  '(custom-enabled-themes (quote (sanityinc-tomorrow-day)))
;;  '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "3d6b08cd1b1def3cc0bc6a3909f67475e5612dba9fa98f8b842433d827af5d30" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "88d556f828e4ec17ac074077ef9dcaa36a59dccbaa6f2de553d6528b4df79cbd" "60e70079a187df634db25db4bb778255eaace1ef4309e56389459fb9418b4840" "7a2c92b6267b84ae28a396f24dd832e29a164c1942f1f8b3fe500f1c25f8e09d" "06f5145c01ec774a0abb49eeffa3980743ce2f997112b537effeb188b7c51caf" default)))
;;  '(debug-on-error t)
;;  '(delete-key-deletes-forward t)
;;  '(fci-rule-color "#2a2a2a")
;;  '(global-font-lock-mode t nil (font-lock))
;;  '(line-number-mode t)
;;  '(make-backup-files nil)
;;  '(mouse-yank-at-point t)
;;  '(show-paren-mode t nil (paren))
;;  '(transient-mark-mode t)
;;  '(user-mail-address "nicola.vianello@igi.cnr.it")
;;  '(vc-annotate-background nil)
;;  '(vc-annotate-color-map (quote ((20 . "#d54e53") (40 . "#e78c45") (60 . "#e7c547") (80 . "#b9ca4a") (100 . "#70c0b1") (120 . "#7aa6da") (140 . "#c397d8") (160 . "#d54e53") (180 . "#e78c45") (200 . "#e7c547") (220 . "#b9ca4a") (240 . "#70c0b1") (260 . "#7aa6da") (280 . "#c397d8") (300 . "#d54e53") (320 . "#e78c45") (340 . "#e7c547") (360 . "#b9ca4a"))))
;;  '(vc-annotate-very-old-color nil)
;;  '(visible-bell t))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(show-paren-match ((t (:background "cyan")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#4d4d4c" "#c82829" "#718c00" "#eab700" "#4271ae" "#8959a8" "#3e999f" "#ffffff"))
 '(aquamacs-styles-mode t)
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes (quote ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default)))
 '(debug-on-error t)
 '(delete-key-deletes-forward t)
 '(fci-rule-color "#efefef")
 '(global-font-lock-mode t nil (font-lock))
 '(line-number-mode t)
 '(make-backup-files nil)
 '(mouse-yank-at-point t)
 '(show-paren-mode t nil (paren))
 '(transient-mark-mode t)
 '(user-mail-address "nicola.vianello@igi.cnr.it")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#c82829") (40 . "#f5871f") (60 . "#eab700") (80 . "#718c00") (100 . "#3e999f") (120 . "#4271ae") (140 . "#8959a8") (160 . "#c82829") (180 . "#f5871f") (200 . "#eab700") (220 . "#718c00") (240 . "#3e999f") (260 . "#4271ae") (280 . "#8959a8") (300 . "#c82829") (320 . "#f5871f") (340 . "#eab700") (360 . "#718c00"))))
 '(vc-annotate-very-old-color nil)
 '(visible-bell t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-match ((t (:background "cyan")))))
