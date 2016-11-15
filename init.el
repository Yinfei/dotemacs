;;; init.el -- Emacs main config
;;; Commentary:
;;; Code:

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(require 'helm-projectile)
(helm-projectile-on)

;; Ido (Interactively Do Things)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-use-faces nil) ;; disable ido faces to see flx highlights.

;; Golden Ratio (Resizes windows on focus)
(require 'golden-ratio)
(golden-ratio-mode 1)

(add-to-list 'load-path "~/.emacs.d/modules")
(load "yinfei-functions")
(load "yinfei-behaviour")
(load "yinfei-commands")
(load "yinfei-magit")
(load "yinfei-ruby")
(load "yinfei-themes")

;; Run flycheck on start
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init)
;;; init.el ends here
