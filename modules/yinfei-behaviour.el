;;; yinfei-behaviour.el --- Base emacs behaviour overrides

;; Copyright (C) 2016 Yohan Piron

;; Author: Yohan Piron <yinfei84@gmail.com>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;; Code:

(require 'hlinum)
(hlinum-activate)

;; emacs config
(setq x-select-enable-clipboard t) ;; Enable copy and pasting from clipboard
(tool-bar-mode -1)                 ;; Hide Emacs toolbar permanently
(scroll-bar-mode -1)               ;; Hide scollbars permanently
(show-paren-mode 1)                ;; Always show matching parenthesis
(delete-selection-mode 1)          ;; overwrite selected area
(setq make-backup-files nil)       ;; Prevent temporary files
(fset 'yes-or-no-p 'y-or-n-p)      ;; type y or n instead of yes or no
(global-linum-mode 1)              ;; Show line numbers
(column-number-mode t)             ;; Show columns numbers
(setq inhibit-splash-screen t)     ;; Hide welcome splash screen
(global-auto-revert-mode 1)        ;; Auto refresh buffers

;; Forces the messages to 0, and kills the *Messages* buffer - thus disabling it on startup.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Maximize window on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Disable trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Use helm as default file finder
(global-set-key (kbd "C-x C-f") 'find-file)

;; Save temp file in /tmp
(setq backup-directory-alist
     `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
     `((".*" ,temporary-file-directory t)))

(define-key minibuffer-local-map (kbd "ESC") 'kill-buffer-and-window)
(define-key minibuffer-local-map (kbd "q") 'kill-buffer-and-window)

(provide 'yinfei-behaviour)
;;; yinfei-behaviour.el ends here
