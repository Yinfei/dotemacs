;;; init.el -- Emacs main config
;;; Commentary:
;;; Code:

(require 'package)

(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

(setq package-archive-priorities '(("melpa" . 2)
                                   ("gnu" . 1)))

(add-to-list 'load-path "~/.emacs.d/modules")
(add-to-list 'load-path "~/.emacs.d/modules/agenda")

(package-initialize)

(load "yinfei-packages")

;; Load path
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path `("/usr/local/bin")))

;; Load custom modules
(load "yinfei-functions")
(load "yinfei-behaviour")
(load "yinfei-commands")
(load "yinfei-dashboard")
(load "french-holidays")
(load "yinfei-magit")
(load "yinfei-ruby")
;; (load "yinfei-org")
(load "yinfei-theme")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(monokai))
 '(custom-safe-themes
   '("37c8c2817010e59734fe1f9302a7e6a2b5e8cc648cf6a6cc8b85f3bf17fececf" "d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" "8b58ef2d23b6d164988a607ee153fd2fa35ee33efc394281b1028c2797ddeebb" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "f78de13274781fbb6b01afd43327a4535438ebaeec91d93ebdbba1e3fba34d3c" "c7a9a68bd07e38620a5508fef62ec079d274475c8f92d75ed0c33c45fbe306bc" "a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" "a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" default))
 '(magit-use-overlays nil)
 '(package-selected-packages
   '(use-package-ensure-system-package use-package org-superstar haml-mode rubocopfmt smart-mode-line powerline direnv all-the-icons feature-mode emojify slim-mode dashboard expand-region ruby-test-mode multi-term counsel counsel-projectile 0blayout ivy diff-hl yaml-mode smex rubocop rspec-mode php-mode pallet multiple-cursors monokai-theme magit helm-rails helm-projectile handlebars-mode golden-ratio flymake-ruby flycheck-elm flx-ido erlang enh-ruby-mode ember-mode elm-mode elixir-mode ack-menu ac-html))
 '(warning-suppress-log-types '((use-package) (use-package)))
 '(warning-suppress-types '((use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight light :height 140 :width normal :foundry "nil" :family "Monaco"))))
 '(org-agenda-calendar-sexp ((t (:foreground "yellow" :slant normal))))
 '(org-scheduled ((t (:foreground "white")))))

(provide 'init)
;;; init.el ends here
