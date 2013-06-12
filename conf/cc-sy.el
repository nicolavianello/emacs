(setq c-default-style '((java-mode . "java")
                        (cc-mode . "k&r")
			(other . "gnu")))

;:*autonewline-subword
(setq c-toggle-auto-newline 1)
(setq c-subword-mode t)

;:*RET-perform-indent-new-line
(defun my-make-CR-do-indent ()
  (define-key c-mode-base-map "\C-m" 'c-context-line-break))
(add-hook 'c-initialization-hook 'my-make-CR-do-indent)

(add-hook 'c-mode-common-hook
          (lambda ()
            (c-set-style "k&r")                          ; My current preferred brace style
            (setq c-basic-offset 4)                           ; Basic indentation level is 4 spaces
            (c-set-offset 'inclass '+)                        ; Only one level of indentation in classes
            (c-toggle-auto-hungry-state 1)                    ; Turn on hungry delete
            (auto-fill-mode t)
	    (require 'ctypes)
	    (setq ctypes-write-tyes-at-exit t)
	    (ctypes-read-file nil nil t t)
	    (ctypes-auto-parse-mode 1)
	    '(c-indent-comments-syntactically-p t)))
;:*--c-flow-mode----
;(require 'cflow-mode)
;(setq auto-mode-alist (append auto-mode-alist
;			      '(("\\.cflow$" . cflow-mode))))
;:*---el-doc-----
(require 'eldoc)
(autoload 'turn-on-eldoc-mode "eldoc" nil t)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)

