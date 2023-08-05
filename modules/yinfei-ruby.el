;;; yinfei-ruby.el --- Ruby related customizations

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
;; Setting rbenv path
(setq ac-modes '(enh-ruby-mode))

(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

;; Run Rubocop on ruby-mode use
(add-hook 'enh-ruby-mode-hook 'rubocop-mode)

;; Run a Rubocop check on save
(add-hook 'enh-ruby-mode-hook 'rubocopfmt-mode)

(setq rspec-use-spring-when-possible nil)

;;; Prevent magic comments
(setq ruby-insert-encoding-magic-comment nil)

(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))

;;; FUNCTIONS (thanks http://github.com/julienXX)
(defun ruby-open-spec-other-buffer ()
  "Switch to rspec buffer on rspec command run."
  (interactive)
  (when (featurep 'rspec-mode)
    (let ((source-buffer (current-buffer))
          (other-buffer (progn
                          (rspec-toggle-spec-and-target)
                          (current-buffer))))
      (switch-to-buffer source-buffer)
      (pop-to-buffer other-buffer))))

(provide 'yinfei-ruby)
;;; yinfei-ruby.el ends here
