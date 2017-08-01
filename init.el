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

;; auto-complete
(require 'auto-complete-config)
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'ruby-mode)

(add-to-list 'load-path "~/.emacs.d/modules")
(load "yinfei-themes")
(load "yinfei-functions")
(load "yinfei-behaviour")
(load "yinfei-commands")
(load "yinfei-magit")
(load "yinfei-ruby")

(provide 'init)
;;; init.el ends here
