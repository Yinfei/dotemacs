;;; yinfei-theme.el --- Emacs theme

;; Copyright (C) 2020 Yohan Piron

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

;; Thin cursor
(setq-default cursor-type 'bar)

;; Enable dark-theme UI
(when (eq system-type 'darwin) (ns-auto-titlebar-mode))

(provide 'yinfei-theme)
;;; yinfei-theme.el ends here
