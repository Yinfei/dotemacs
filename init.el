;;; init.el -- Emacs main config
;;; Commentary:
;;; Code:

(package-initialize)

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

;; Helm -> Ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; Ido (Interactively Do Things)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-use-faces nil) ;; disable ido faces to see flx highlights.

;; Golden Ratio (Resizes windows on focus)
(require 'golden-ratio)
(golden-ratio-mode 1)

(require 'multi-term)
(setq multi-term-program "/bin/bash")

;; auto-complete
(require 'auto-complete-config)
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'ruby-mode)

;; Enable dark-theme UI
(when (eq system-type 'darwin) (ns-auto-titlebar-mode))

(add-to-list 'load-path "~/.emacs.d/modules")
(add-to-list 'load-path "~/.emacs.d/modules/agenda")
(load-theme 'monokai t)
(load "french-holidays")

(load "yinfei-functions")
(load "yinfei-behaviour")
(load "yinfei-commands")
(load "yinfei-magit")
(load "yinfei-ruby")
(load "yinfei-org")

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path `("/usr/local/bin")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("f78de13274781fbb6b01afd43327a4535438ebaeec91d93ebdbba1e3fba34d3c" "c7a9a68bd07e38620a5508fef62ec079d274475c8f92d75ed0c33c45fbe306bc" "a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" "a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" default)))
 '(magit-use-overlays nil)
 '(package-selected-packages
   (quote
    (dashboard dashboard-hackernews expand-region ruby-test-mode multi-term counsel counsel-projectile 0blayout ivy diff-hl yaml-mode smex rubocop rspec-mode php-mode pallet multiple-cursors monokai-theme magit helm-rails helm-projectile handlebars-mode golden-ratio flymake-ruby flycheck-elm flx-ido erlang enh-ruby-mode ember-mode elm-mode elixir-mode ack-menu ac-html))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight light :height 120 :width normal :foundry "nil" :family "Monaco"))))
 '(org-agenda-calendar-sexp ((t (:foreground "yellow" :slant normal))))
 '(org-scheduled ((t (:foreground "white")))))

(provide 'init)
;;; init.el ends here
