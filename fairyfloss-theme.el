;;; fairyfloss-theme.el --- A dreamy, pastel-colored dark theme inspired by Fairyfloss for Sublime Text

;; Copyright (C) 2025 Iago Corrêa

;; Author: Iago Corrêa/icunhacorrea <iago.cunhac@gmail.com>
;; Maintainer: Iago Corrêa/icunhacorrea <iago.cunhac@gmail.com>
;; Created: 2025-11-12
;; Keywords: faces, color-theme, dark, pastel, light-colors
;; Compatibility: 25.1
;; Version: 1.0.0

;; Reference: https://github.com/sailorhg/fairyfloss

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This theme is a port of the popular Fairyfloss theme (Sublime Text, VS Code) to Emacs.
;; It features a dark background with pastel and vibrant colors for syntax highlighting,
;; focusing on soft contrast and readability.

;; To use this theme, download it to your themes directory (~/.emacs.d/themes/)
;; and add the path to your init.el:
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; Then, use `M-x load-theme` and select "fairyfloss".

;;; Code:

(deftheme fairyfloss
  "A dreamy, pastel-colored dark theme inspired by Fairyfloss for Sublime Text.")

(let ((class '((class color) (min-colors 89)))
      (bg        "#5A5475")
      (fg        "#F8F8F2")
      (cursor    "#F8F8F0")
      (selection "#8077A8")
      (line-hl   "#716799")
      (comment   "#E6C000")
      (string    "#FFEA00")
      (number    "#C5A3FF")
      (keyword   "#FFB8D1")
      (storage   "#FFB8D1")
      (type      "#C2FFDF")
      (class-name "#FFF352")
      (func      "#FFF352")
      (arg       "#FF857F")
      (invalid   "#F92672")
      (border    "#4A4363")
      (guide     "#A8757B"))

   (custom-theme-set-faces
    'fairyfloss
    
    ;; Basic
    `(default ((,class (:background ,bg :foreground ,fg))))
    `(cursor ((t (:background ,cursor :foreground ,bg))))
    `(fringe  ((,class (:background ,bg :foreground ,fg))))
    `(region  ((,class (:background ,selection :extend t))))
    `(vertical-border ((,class (:foreground ,border :background ,bg))))

    ;; UI
    `(hl-line ((,class (:background ,line-hl :extend t))))
    `(line-number ((,class (:background ,bg :foreground ,selection))))
    `(line-number-current-line ((,class (:background ,bg :foreground ,string :weight bold))))

    ;; Syntax
    `(font-lock-builtin-face ((,class (:foreground ,type))))
    `(font-lock-comment-face ((,class (:foreground ,comment :slant italic))))
    `(font-lock-constant-face ((,class (:foreground ,number))))
    `(font-lock-function-name-face ((,class (:foreground ,func))))
    `(font-lock-keyword-face ((,class (:foreground ,keyword))))
    `(font-lock-string-face ((,class (:foreground ,string))))
    `(font-lock-type-face ((,class (:foreground ,type :slant italic))))
    `(font-lock-variable-name-face ((,class (:foreground ,fg))))
    `(font-lock-warning-face ((,class (:foreground ,invalid :weight bold))))

    ;; Extra
    `(mode-line ((,class (:background ,border :foreground ,type :box nil))))
    `(mode-line-inactive ((,class (:background ,bg :foreground ,selection :box (:line-width -1 :color ,border)))))
    `(header-line ((,class (:background ,bg :foreground ,comment))))
    `(minibuffer-prompt ((,class (:foreground ,keyword :weight bold))))
    `(show-paren-match ((,class (:background ,keyword :foreground ,bg :weight bold))))
    `(show-paren-mismatch ((,class (:background ,invalid :foreground ,fg))))
    `(isearch ((,class (:background ,string :foreground ,bg :weight bold))))
    `(lazy-highlight ((,class (:background ,type :foreground ,bg))))
    `(highlight ((,class (:background ,line-hl :foreground ,fg))))

    ;; Magit
    `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
    `(magit-diff-file-heading      ((,class (:foreground ,string :weight bold))))
    `(magit-diff-file-heading-highlight ((,class (:background ,line-hl :foreground ,string :weight bold))))
    `(magit-diff-context           ((,class (:foreground ,fg :background ,bg))))
    `(magit-diff-added             ((,class (:foreground ,type :background ,bg))))
    `(magit-diff-added-highlight   ((,class (:foreground ,type :background ,border :weight bold))))
    `(magit-diff-removed           ((,class (:foreground ,keyword :background ,bg))))
    `(magit-diff-removed-highlight ((,class (:foreground ,keyword :background ,border :weight bold))))
    `(magit-branch-local           ((,class (:foreground ,func :weight bold))))
    `(magit-branch-remote          ((,class (:foreground ,type :slant italic))))
    `(magit-tag                    ((,class (:foreground ,string))))
    `(magit-hash                   ((,class (:foreground ,comment))))

    ;; Diff-Hl-Delete
    `(diff-hl-insert ((,class (:background ,type :foreground ,type))))
    `(diff-hl-delete ((,class (:background ,keyword :foreground ,keyword))))
    `(diff-hl-change ((,class (:background ,string :foreground ,string))))
    ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'fairyfloss)

;;; FairyFloss theme ends here
