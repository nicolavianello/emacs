;:*------------------------------
;/* enable syntax highlighting */
(require 'font-lock) 
(setq-default font-lock-use-colors '(color)
              font-lock-maximum-decoration t
              font-lock-maximum-size nil
              font-lock-auto-fontify t
              global-font-lock-mode t)
(custom-set-faces
 '(show-paren-match ((t (:background "cyan"))))
 '(show-paren-match-face ((t (:background "cyan"))) t))
(global-auto-revert-mode t)
; In MaxOsX where font is installed use the Inconsolata
(cond
 ((eq system-type 'darwin)
  (set-face-attribute 'default nil
		      :family "Inconsolata" :height 140 :weight 'normal)
  ))
(set-face-attribute 'default nil :height 140)
