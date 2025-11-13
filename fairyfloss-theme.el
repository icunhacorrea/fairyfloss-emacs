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

;; Code

(deftheme fairyfloss
  "A dreamy, pastel-colored dark theme inspired by Fairyfloss for Sublime Text.")

;; Color palette
(let ((class '((class color) (min-colors 89)))
      (fg        "#F8F8F2")
      (bg        "#5A5475")
      (comment   "#B8A9C9")
      (pink      "#FFB8D1")
      (yellow    "#FFD173")
      (green     "#B8E986")
      (blue      "#A1EFE4")
      (purple    "#CAA9FA")
      (red       "#FF857F")
      (orange    "#FFB870")
      (cursor    "#F8F8F0"))

   (custom-theme-set-faces
    'fairyfloss
    
   `(default ((,class (:background ,bg :foreground ,fg))))
   '(cursor ((t (:background "#FFB8D1" :foreground "#2E2440"))))
   `(fringe  ((,class (:background ,bg))))
   `(region  ((,class (:background ,purple :foreground ,bg))))
   `(shadow ((,class (:foreground ,comment))))
   `(hl-line ((,class (:background "#6C6783" :foreground ,fg))))
   `(highlight ((,class (:background "#7A7190" :foreground ,fg))))
   `(highlight-numbers-number ((,class (:foreground ,yellow))))
   `(highlight-operators-face ((,class (:foreground ,pink))))
   `(highlight-symbol-face ((,class (:background "#6C6783" :foreground ,fg))))
   `(minibuffer-prompt ((,class (:foreground ,pink :weight bold))))
   `(link ((,class (:foreground ,blue :underline t))))
   `(success ((,class (:foreground ,green))))
   `(warning ((,class (:foreground ,orange))))
   `(error ((,class (:foreground ,red :weight bold))))
   `(bold ((,class (:weight bold))))
   `(italic ((,class (:slant italic))))
   `(underline ((,class (:underline t))))
   `(button ((,class (:foreground ,pink :underline t))))
   `(text-cursor ((,class (:background ,cursor))))
   `(show-paren-mismatch ((,class (:background ,red :foreground ,fg :weight bold))))

   ;; Font lock (syntax highlighting)
   `(font-lock-builtin-face ((,class (:foreground ,purple))))
   `(font-lock-comment-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,pink))))
   `(font-lock-function-name-face ((,class (:foreground ,yellow))))
   `(font-lock-keyword-face ((,class (:foreground ,pink :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-type-face ((,class (:foreground ,blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,orange))))
   `(font-lock-warning-face ((,class (:foreground ,red :weight bold))))

   ;; Font lock (syntax highlighting)
   `(font-lock-builtin-face ((,class (:foreground ,purple))))
   `(font-lock-comment-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,pink))))
   `(font-lock-function-name-face ((,class (:foreground ,yellow :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,pink :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-type-face ((,class (:foreground ,blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,orange))))
   `(font-lock-warning-face ((,class (:foreground ,red :weight bold))))

   ;; UI
   `(header-line ((t (:background "#4A4363" :foreground "#CAA9FA" :box nil))))
   `(mode-line ((,class (:background "#4A4363" :foreground ,purple :box nil))))
   `(mode-line-inactive ((,class (:background ,bg :foreground ,comment :box nil))))
   `(vertical-border ((,class (:foreground "#4A4363"))))
   `(horizontal-border ((,class (:foreground "#4A4363"))))
   `(show-paren-match ((,class (:background ,pink :foreground ,bg :weight bold))))
   `(isearch ((,class (:background ,yellow :foreground ,bg :weight bold))))
   `(lazy-highlight ((,class (:background ,blue :foreground ,bg :weight bold))))
   `(line-number ((,class (:foreground ,comment :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,pink :background ,bg :weight bold))))

   ;; diff-hl
   `(diff-hl-insert ((,class (:background "#a8e6a1" :foreground "#a8e6a1"))))
   `(diff-hl-delete ((,class (:background "#f8b7b3" :foreground "#f8b7b3"))))
   `(diff-hl-change ((,class (:background "#fff59d" :foreground "#fff59d"))))

   ;; Corfu
   `(corfu-default ((,class (:background "#6C6783" :foreground ,fg))))
   `(corfu-current ((,class (:background ,purple :foreground ,bg))))
   `(corfu-border ((,class (:background ,bg))))
   `(corfu-bar ((,class (:background ,pink))))

   ;; Magit
   `(magit-branch-local ((,class (:foreground ,pink))))
   `(magit-branch-remote ((,class (:foreground ,green))))
   `(magit-tag ((,class (:foreground ,yellow))))
   `(magit-section-heading ((,class (:foreground ,blue :weight bold))))
   `(magit-diff-file-heading ((,class (:foreground ,purple))))
   `(magit-hash ((,class (:foreground ,comment))))
   `(magit-log-author ((,class (:foreground ,comment))))
   `(magit-process-ok ((,class (:foreground ,green :weight bold))))
   `(magit-process-ng ((,class (:foreground ,red :weight bold))))
   `(magit-item-highlight ((,class (:background "#6C6783" :extend t))))
   `(magit-section-highlight ((,class (:background "#6C6783" :extend t))))
   `(magit-diff-context ((,class (:foreground ,fg :background ,bg))))

   ;; Windows
   `(window-divider ((,class (:foreground "#4A4363"))))
   `(window-divider-first-pixel ((,class (:foreground "#4A4363"))))
   `(window-divider-last-pixel ((,class (:foreground "#4A4363"))))
   
   ;; Completions
   `(completions-common-part ((,class (:foreground ,yellow))))
   `(completions-first-difference ((,class (:foreground ,pink :weight bold))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'fairyfloss)
