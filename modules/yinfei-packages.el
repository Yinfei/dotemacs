;;; yinfei-packages.el --- Packages related configurations

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

;; We ensure use-package is installed and all packages are up-to-date
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Ensure all the packages we "use" are installed
(require 'use-package)
(require 'use-package-ensure)

(setq use-package-always-ensure t)
(use-package use-package-ensure-system-package :ensure t)

(provide 'yinfei-packages)
;;; yinfei-packages.el ends here

(use-package 0blayout)
(use-package ac-html)
(use-package ack-menu)
(use-package all-the-icons)

(use-package all-the-icons-ivy)
(all-the-icons-ivy-setup)

(use-package ansi)
(use-package async)

(use-package auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'ruby-mode)

(use-package counsel)
(use-package counsel-projectile)
(use-package dash)

(use-package dashboard)
(dashboard-setup-startup-hook)

(use-package diff-hl)

(use-package direnv)
(direnv-mode)

(use-package elixir-mode)
(use-package elm-mode)
(use-package emojify)
(use-package enh-ruby-mode)
(use-package erlang)
(use-package expand-region)
(use-package f)
(use-package feature-mode)
(use-package flx)

(use-package flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-use-faces nil) ;; disable ido faces to see flx highlights.

(use-package flycheck)
(use-package flycheck-elm)
(use-package flymake-easy)
(use-package flymake-ruby)
(use-package git-commit)

(use-package golden-ratio)
(golden-ratio-mode 1)

(use-package haml-mode)
(use-package handlebars-mode)
(use-package helm)
(use-package helm-core)
(use-package helm-projectile)
(use-package helm-rails)

(use-package hlinum)
(hlinum-activate)

(use-package ht)
(use-package inflections)
(use-package ivy)
(use-package let-alist)
(use-package mag-menu)
(use-package magit)
(use-package magit-section)
(use-package markdown-mode)
(use-package memoize)
(use-package monokai-theme)

(use-package multi-term)
(setq multi-term-program "/bin/bash")

(use-package multiple-cursors)
(use-package ns-auto-titlebar)
(use-package org)
(use-package org-superstar)
(use-package package-build)
(use-package page-break-lines)
(use-package pcre2el)
(use-package pkg-info)
(use-package popup)

(use-package powerline)
(powerline-default-theme)
(add-hook 'after-init-hook 'sml/setup)
(setq sml/theme 'respectful)


(use-package projectile)
(setq projectile-project-search-path '("~/src/"))

(use-package reformatter)
(use-package request)
(use-package rich-minority)
(use-package rspec-mode)
(use-package rubocop)
(use-package rubocopfmt)
(use-package ruby-test-mode)
(use-package s)
(use-package seq)
(use-package shut-up)
(use-package slim-mode)
(use-package smart-mode-line)

(use-package smartparens)
(smartparens-global-mode t)

(use-package smex)
(smex-initialize)

(use-package splitter)
(use-package swiper)
(use-package transient)
(use-package with-editor)
(use-package yaml-mode)
