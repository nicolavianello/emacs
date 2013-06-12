;:*---Private-libaries
(setq TeX-style-private   "~/Library/texmf/tex/latex:")
(load "auctex.el" nil t t)
;(load "preview-latex.el" nil t t)
(add-hook 'LaTeX-mode-hook (lambda ()
			     (push 
			      '("Latexmk" "latexmk -pdf %s" TeX-run-command nil t 
				:help "Run Latexmk on file")
			      TeX-command-list)))
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)
(add-hook 'LaTeX-mode-hook (lambda ()
			     (TeX-fold-mode 1 )))
(defun turn-on-outline-minor-mode ()
  (outline-minor-mode 1))
(add-hook 'LaTeX-mode-hook 'turn-on-outline-minor-mode)
(add-hook 'latex-mode-hook 'turn-on-outline-minor-mode)
(setq outline-minor-mode-prefix "\C-c\C-o") ; Or something else

(setq TeX-auto-save t)
(setq TeX-save-query nil) ;;autosave before compiling
(setq TeX-parse-self t)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-save-query nil)
(setq TeX-PDF-mode t)
(autoload 'ebib "ebib" "Ebib, a BibTeX database manager." t)
