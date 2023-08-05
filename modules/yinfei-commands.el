;;; yinfei-commands.el --- Base emacs command overrides

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

;; Mac-like commands
(global-set-key (kbd "M-z") 'undo)
(global-set-key (kbd "M-c") 'kill-ring-save)
(global-set-key (kbd "M-v") 'yank)
(global-set-key (kbd "M-a") 'mark-whole-buffer)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "M-f") 'swiper)
(global-set-key (kbd "M-F") 'counsel-rg)

;; SublimeText-like commands
(global-set-key (kbd "M-P") 'magit-status)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-w") 'kill-current-buffer)
(global-set-key (kbd "M-D") 'duplicate-current-line-or-region)
(global-set-key (kbd "M-:") 'comment-region)
(global-set-key (kbd "M-/") 'uncomment-region)

;; Buffers / Windows commands
(global-set-key (kbd "<M-up>") 'ivy-switch-buffer)
(global-set-key (kbd "<M-down>") 'ivy-switch-buffer)
(global-set-key (kbd "<M-right>") 'other-window)
(global-set-key (kbd "<M-left>") 'previous-multiframe-window)
(global-set-key (kbd "M-b") 'helm-buffers-list)
(global-set-key (kbd "M-t") 'toggle-window-split)
(global-set-key (kbd "M-T") 'kill-buffer-and-window)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)

;; Selection
(global-set-key (kbd "M-r") 'er/expand-region)

;; smex bindings
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; This the original M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Use M-p to run counsel-projectile-find-file
(setq projectile-keymap-prefix (kbd "C-c C-p"))
(global-set-key (kbd "M-p") 'counsel-projectile-find-file)

;; Free up the option key for special characters
(setq ns-alternate-modifier 'none)
(setq ns-command-modifier 'meta)
(setq ns-function-modifier 'super)

(provide 'yinfei-commands)
;;; yinfei-commands.el ends here
