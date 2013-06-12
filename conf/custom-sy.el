(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aquamacs-styles-mode t)
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(column-number-mode t)
 '(custom-safe-themes (quote ("7a2c92b6267b84ae28a396f24dd832e29a164c1942f1f8b3fe500f1c25f8e09d" "06f5145c01ec774a0abb49eeffa3980743ce2f997112b537effeb188b7c51caf" default)))
 '(debug-on-error t)
 '(delete-key-deletes-forward t)
 '(global-font-lock-mode t nil (font-lock))
 '(line-number-mode t)
 '(make-backup-files nil)
 '(mouse-yank-at-point t)
 '(show-paren-mode t nil (paren))
 '(transient-mark-mode t)
 '(user-mail-address "nicola.vianello@igi.cnr.it")
 '(visible-bell t))


(setq coding-toggle nil)
(defun toggle-line-end-coding ()
  "Switch from DOS line ends (\r\n) to Unix (\n) and back again"
  (interactive)
  (if coding-toggle
      (progn
	(set-buffer-file-coding-system `iso-latin-1-unix)
	(setq coding-toggle nil)
	(message "Use unix line endings." ())
	)
      (progn
	(set-buffer-file-coding-system `iso-latin-1-dos)
	(setq coding-toggle t)
	(message "Use dos line endings." ())
	)
      ))
