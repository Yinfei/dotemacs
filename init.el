;;; init.el -- Emacs main config
;;; Commentary:
;;; Code:

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)
(require 'helm-projectile)
(helm-projectile-on)

;; Prevent rspec-mode to use 'spring rspec' instead of 'bundle exec rspec'
(setq rspec-use-spring-when-possible nil)

;; load custom functions
(add-to-list 'load-path "~/.emacs.d/custom")
(load "duplicate-current-line-or-region")

;; Setting rbenv path
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

;; Disable trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Run flycheck/rubocop on start
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'ruby-mode-hook 'rubocop-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a"
     "a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a"
     "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a"
     "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" default)))
 '(magit-use-overlays nil)
 '(smartparens-global-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil
		:stipple nil
		:background "#272822"
		:foreground "#F8F8F2"
		:inverse-video nil
		:box nil
		:strike-through nil
		:overline nil
		:underline nil
		:slant normal
		:weight light
		:height 120
		:width normal
		:foundry "nil"
		:family "Monaco")))))

;; Free up the option key for special characters
(setq ns-alternate-modifier 'none)
(setq ns-command-modifier 'meta)
(setq ns-function-modifier 'super)

;; add ido
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)

;; smex
(require 'smex)
(smex-initialize)

;; Golden Ratio
(require 'golden-ratio)
(golden-ratio-mode 1)

;; smex bindings
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; This the original M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Use helm as default file finder
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; Use M-t to run helm-projectile
(global-set-key (kbd "M-t") 'helm-projectile-find-file)

;; Save temp file in /tmp
(setq backup-directory-alist
     `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
     `((".*" ,temporary-file-directory t)))

;; emacs config
(setq x-select-enable-clipboard t) ;; Enable copy and pasting from clipboard
(tool-bar-mode -1)                 ;; Hide Emacs toolbar permanently
(scroll-bar-mode -1)               ;; Hide scollbars permanently
(show-paren-mode 1)                ;; Always show matching parenthesis
(delete-selection-mode t)          ;; overwrite selected area
(setq make-backup-files nil)       ;; Prevent temporary files
(fset 'yes-or-no-p 'y-or-n-p)      ;; type y or n instead of yes or no
(setq shift-selection-mode t)      ;; Allow selection with shift
(global-linum-mode 1)              ;; Show line numbers
(column-number-mode t)             ;; Show columns numbers
(setq inhibit-splash-screen t)     ;; Hide welcome splash screen
(global-auto-revert-mode 1)        ;; Auto refresh buffers

;; Mac-like commands
(global-set-key (kbd "M-z") 'undo)
(global-set-key (kbd "M-c") 'kill-ring-save)
(global-set-key (kbd "M-v") 'yank)
(global-set-key (kbd "M-a") 'mark-whole-buffer)
(global-set-key (kbd "<escape>")      'keyboard-escape-quit)

;; sublime-like commands
(global-set-key (kbd "M-p") 'helm-find-files)
(global-set-key (kbd "M-P") 'magit-status)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-w") 'kill-buffer)
(global-set-key (kbd "M-D") 'duplicate-current-line-or-region)
(global-set-key (kbd "M-d") 'mc/mark-next-like-this)
(global-set-key (kbd "M-:") 'comment-region)
(global-set-key (kbd "M-/") 'uncomment-region)

;; Buffers / Windows commands
(global-set-key (kbd "<M-up>") 'next-buffer)
(global-set-key (kbd "<M-down>") 'previous-buffer)
(global-set-key (kbd "<M-right>") 'other-window)
(global-set-key (kbd "<M-left>") 'previous-multiframe-window)

(provide 'init)
;;; init.el ends here
