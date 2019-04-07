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

(load "yinfei-themes")
(load "yinfei-functions")
(load "yinfei-behaviour")
(load "yinfei-commands")
(load "yinfei-magit")
(load "yinfei-ruby")
(load "yinfei-org")

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path `("/usr/local/bin")))

(provide 'init)
;;; init.el ends here
