(cond
 ((eq system-type 'darwin)
(setq enh-ruby-program "$HOME/.rvm/rubies/ruby-1.9.3-p0/bin/ruby") ; so that still works if ruby points to ruby1.8
  ))
(require 'ruby-mode)
(require 'ruby-tools nil t)
