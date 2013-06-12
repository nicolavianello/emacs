(require 'python)

;; ipython setup
(setq
 python-shell-interpreter "/Users/nicola/Library/Enthought/Canopy_64bit/User/bin/ipython --pylab"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
   python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
   python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")


(require 'smart-operator)
(smart-operator-mode-on)

(add-hook 'python-mode-hook
          (lambda ()
              (smart-operator-mode-on)))



