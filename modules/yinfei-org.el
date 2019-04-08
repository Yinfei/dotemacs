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

(require 'org)
(require 'french-holidays)

(setq org-directory "~/Dropbox/Org/")
(setq org-agenda-files (list "~/Dropbox/Org/Agenda/Perso.org"
                             "~/Dropbox/Org/Agenda/Pro.org"
                             "~/Dropbox/Org/Agenda/Magic.org"
                             "~/Dropbox/Org/Agenda/Routine.org"
                             "~/Dropbox/Org/Agenda/Birthdays.org"
                             "~/Dropbox/Org/Agenda/Holidays.org"))

(setq calendar-holidays holiday-french-holidays)
(setq org-agenda-span 14)

(setq org-ellipsis " ⤵")
(setq org-log-done 'time)
(setq org-adapt-indentation nil)

(define-key global-map "\C-a" 'org-agenda)
(setq org-agenda-prefix-format
      (quote
       ((agenda . "%-12c%?-12t% s")
        (timeline . "% s")
        (todo . "%-12c")
        (tags . "%-12c")
        (search . "%-12c"))))

(setq org-agenda-deadline-leaders (quote ("!D!: " "D%2d: " "")))
(setq org-agenda-scheduled-leaders (quote ("" "S%3d: ")))

(provide 'yinfei-org)
;;; yinfei-org.el ends here
