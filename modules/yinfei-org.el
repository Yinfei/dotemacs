;;; yinfei-org.el --- Org-mode config

;; Copyright (C) 2019 Yohan Piron

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

(require 'french-holidays)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

;;(setq org-directory "~/Dropbox/Org/")
(setq org-agenda-files (file-expand-wildcards "/Users/yohan/Library/CloudStorage/Dropbox/Org/Agenda/*.org"))
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq calendar-holidays holiday-french-holidays)
(setq org-agenda-span 14)

(setq org-ellipsis " ⤵")
(setq org-log-done 'time)
(setq org-adapt-indentation nil)

(define-key global-map (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-agenda-prefix-format
      (quote
       ((agenda . "%s %-12c %(org-format-outline-path (org-get-outline-path)) %?-12t% s")
        (timeline . "% s")
        (todo . "%-12c")
        (tags . "%-12c")
        (search . "%-12c"))))

(setq org-agenda-deadline-leaders (quote ("!D!: " "D%2d: " "")))
(setq org-agenda-scheduled-leaders (quote ("" "S%3d: ")))

(add-hook 'org-agenda-finalize-hook
  (lambda ()
    (save-excursion
      (color-org-header "Perso" "#272822" "#98fb98")
      (color-org-header "Magic" "#272822" "#98fb98")
      (color-org-header "Pro" "#272822" "#b22222")
      (color-org-header "Work" "#272822" "##FF0000")
      (color-org-header "Home" "#272822" "#00bfff"))))

(provide 'yinfei-org)
;;; yinfei-org.el ends here
