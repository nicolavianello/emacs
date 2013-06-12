;:/*--------------------------------------------------------------------
; IDL settings 
;:/*--------------------------------------------------------------------
;(setq load-path (cons "~/.emacs.d/idlwave-6.5pre4" load-path))
(setq load-path (cons "~/.emacs.d/idlwave" load-path))
(autoload 'idlwave-mode "idlwave" "IDLWAVE Mode" t)
(autoload 'idlwave-shell "idlw-shell" "IDLWAVE Shell" t)
(setq idlwave-shell-explicit-file-name "/Applications/itt/idl/bin/idl")
(setq idlwave-system-directory "/Applications/itt/idl71")
(setq auto-mode-alist  (cons '("\\.pro\\'" . idlwave-mode) auto-mode-alist))

(setq                        ; Set Options Here
 ;; Gotta have that smart-continue-indenting
 idlwave-max-extra-continuation-indent 100
 idlwave-expand-generic-end t
 idlwave-completion-show-classes 10
 idlwave-store-inquired-class t
 idlwave-block-indent 4          ; Proper Indentation settings
 ;; Any self-respecting programmer indents his main block
 idlwave-main-block-indent 4
 idlwave-end-offset -4
 idlwave-continuation-indent 3
 font-lock-maximum-decoration 3
 
 ;; Ahh, mixed case for nearly everything.  Only upcase keywords.
 idlwave-completion-case '((routine . preserve)
			   (keyword . upcase)
			   (class . preserve)
			   (method . preserve)))
(setq idlwave-indent-parens-nested t)
(setq idlwave-reserved-word-upcase t)
(setq idlwave-fill-comment-line-only nil)
(setq idlwave-indent-parens-nested t)
(setq idlwave-use-last-hang-indent t)
(setq idlwave-libinfo-file "~/.idlwave/libinfo.el")
(setq idlwave-header-to-beginning-of-file t)
(setq font-lock-maximum-decoration 4) 
(setq idlwave-show-block t)
(setq paragraph-separate "[ \t\f]*$\\|[ \t]*;+[ \t]*$\\|;+[+=-_*]+$")
(setq idlwave-init-rinfo-when-idle-after 2)
(setq idlwave-do-actions t)
(setq idlwave-surround-by-blank t)
(setq idlwave-use-library-catalog t)
(setq idlwave-shell-automatic-start t)
(setq idlwave-reindent-end t)
(setq idlwave-abbrev-mode t)



;:/*-------------------------------------------*/
; fine delle configurazioni per IDL
;:/*-------------------------------------------*/
