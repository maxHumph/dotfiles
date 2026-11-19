;; -*- lexical-binding: t; -*-

;;; gruber-custom-theme.el --- Gruber Darker color theme for Emacs 24.

;; Copyright (C) 2013-2016 Alexey Kutepov a.k.a rexim
;; Copyright (C) 2009-2010 Jason R. Blevins

;; Author: Alexey Kutepov <reximkut@gmail.com>
;; URL: http://github.com/rexim/gruber-custom-theme
;; Package-Version: 20231026.2031
;; Package-Revision: 2e9f99c41fe8

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:
;;
;; Gruber Darker color theme for Emacs by Jason Blevins. A darker
;; variant of the Gruber Dark theme for BBEdit by John Gruber. Adapted
;; for deftheme and extended by Alexey Kutepov a.k.a. rexim.


(deftheme gruber-custom
  "Gruber Darker color theme for Emacs 24")

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((gruber-custom-fg        "#ddd1bc")
      (gruber-custom-fg+1      "#dfd3be")
      (gruber-custom-fg+2      "#e2d5c1")
      (gruber-custom-white     "#ffffff")
      (gruber-custom-black     "#000000")
      (gruber-custom-bg-1      "#0a0908")
      (gruber-custom-bg        "#0c0b0a")
      (gruber-custom-bg+1      "#110f0e")
      (gruber-custom-bg+2      "#151413")
      (gruber-custom-bg+3      "#191817")
      (gruber-custom-bg+4      "#1d1c1b")
      (gruber-custom-red-1     "#df1a34")
      (gruber-custom-red       "#db162f")
      (gruber-custom-red+1     "#ff4055")
      (gruber-custom-green     "#29a34a")
      (gruber-custom-yellow    "#ffdd33")
      (gruber-custom-brown     "#cc8c3c")
      (gruber-custom-quartz    "#95a99f")
      (gruber-custom-niagara-2 "#303540")
      (gruber-custom-niagara-1 "#565f73")
      (gruber-custom-niagara   "#96a6c8")
      (gruber-custom-wisteria  "#9e95c7")
      )
  (custom-theme-set-variables
   'gruber-custom
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'gruber-custom

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,gruber-custom-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,gruber-custom-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,gruber-custom-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground gruber-custom-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,gruber-custom-green))))
   `(agda2-highlight-number-face ((t (:foreground ,gruber-custom-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,gruber-custom-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,gruber-custom-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,gruber-custom-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground gruber-custom-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,gruber-custom-niagara))))
   `(font-latex-string-face ((t (:foreground ,gruber-custom-green))))
   `(font-latex-warning-face ((t (:foreground ,gruber-custom-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background gruber-custom-bg-1
                       :foreground gruber-custom-bg+2))))
   `(cursor ((t (:background ,gruber-custom-yellow))))
   `(default ((t ,(list :foreground gruber-custom-fg
                        :background gruber-custom-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground gruber-custom-bg+2))))
   `(vertical-border ((t ,(list :foreground gruber-custom-bg+2))))
   `(link ((t (:foreground ,gruber-custom-niagara :underline t))))
   `(link-visited ((t (:foreground ,gruber-custom-wisteria :underline t))))
   `(match ((t (:background ,gruber-custom-bg+4))))
   `(shadow ((t (:foreground ,gruber-custom-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,gruber-custom-niagara))))
   `(region ((t (:background ,gruber-custom-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background gruber-custom-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground gruber-custom-black
                                    :background gruber-custom-red))))
   `(tooltip ((t ,(list :background gruber-custom-bg+4
                        :foreground gruber-custom-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,gruber-custom-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground gruber-custom-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground gruber-custom-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,gruber-custom-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground gruber-custom-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground gruber-custom-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,gruber-custom-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground gruber-custom-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground gruber-custom-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,gruber-custom-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground gruber-custom-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,gruber-custom-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,gruber-custom-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,gruber-custom-yellow))))
   `(egg-branch-mono ((t (:foreground ,gruber-custom-yellow))))
   `(egg-diff-add ((t (:foreground ,gruber-custom-green))))
   `(egg-diff-del ((t (:foreground ,gruber-custom-red))))
   `(egg-diff-file-header ((t (:foreground ,gruber-custom-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,gruber-custom-yellow))))
   `(egg-help-header-2 ((t (:foreground ,gruber-custom-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,gruber-custom-fg)))))
   `(egg-reflog-mono ((t (:foreground ,gruber-custom-niagara-1))))
   `(egg-section-title ((t (:foreground ,gruber-custom-yellow))))
   `(egg-text-base ((t (:foreground ,gruber-custom-fg))))
   `(egg-term ((t (:foreground ,gruber-custom-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,gruber-custom-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,gruber-custom-green))))
   `(erc-input-face ((t (:foreground ,gruber-custom-red+1))))
   `(erc-my-nick-face ((t (:foreground ,gruber-custom-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,gruber-custom-quartz))))
   `(eshell-ls-directory ((t (:foreground ,gruber-custom-niagara))))
   `(eshell-ls-executable ((t (:foreground ,gruber-custom-green))))
   `(eshell-ls-symlink ((t (:foreground ,gruber-custom-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,gruber-custom-yellow))))
   `(font-lock-comment-face ((t (:foreground ,gruber-custom-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,gruber-custom-brown))))
   `(font-lock-constant-face ((t (:foreground ,gruber-custom-quartz))))
   `(font-lock-doc-face ((t (:foreground ,gruber-custom-green))))
   `(font-lock-doc-string-face ((t (:foreground ,gruber-custom-green))))
   `(font-lock-function-name-face ((t (:foreground ,gruber-custom-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,gruber-custom-yellow :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,gruber-custom-quartz))))
   `(font-lock-reference-face ((t (:foreground ,gruber-custom-quartz))))
   `(font-lock-string-face ((t (:foreground ,gruber-custom-green))))
   `(font-lock-type-face ((t (:foreground ,gruber-custom-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,gruber-custom-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,gruber-custom-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-custom-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,gruber-custom-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-custom-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-custom-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-custom-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-custom-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-custom-red) :inherit unspecified))
      (t (:foreground ,gruber-custom-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-custom-yellow) :inherit unspecified))
      (t (:foreground ,gruber-custom-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background gruber-custom-bg+2
                                      :foreground gruber-custom-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground gruber-custom-niagara
                                  :background gruber-custom-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,gruber-custom-green))))
   `(helm-ff-file ((t (:foreground ,gruber-custom-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground gruber-custom-bg
                                        :background gruber-custom-red))))
   `(helm-ff-symlink ((t (:foreground ,gruber-custom-yellow :bold t))))
   `(helm-selection-line ((t (:background ,gruber-custom-bg+1))))
   `(helm-selection ((t (:background ,gruber-custom-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground gruber-custom-yellow
                                   :background gruber-custom-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,gruber-custom-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,gruber-custom-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,gruber-custom-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,gruber-custom-niagara))))
   `(info-visited ((t (:foreground ,gruber-custom-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground gruber-custom-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,gruber-custom-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,gruber-custom-green))))
   `(jabber-rare-time-face ((t (:foreground ,gruber-custom-green))))
   `(jabber-roster-user-online ((t (:foreground ,gruber-custom-green))))
   `(jabber-activity-face ((t (:foreground ,gruber-custom-red))))
   `(jabber-activity-personal-face ((t (:foreground ,gruber-custom-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,gruber-custom-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background gruber-custom-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,gruber-custom-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,gruber-custom-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground gruber-custom-quartz
                      :background gruber-custom-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,gruber-custom-niagara))))
   `(magit-diff-hunk-header ((t (:background ,gruber-custom-bg+2))))
   `(magit-diff-file-header ((t (:background ,gruber-custom-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,gruber-custom-red+1))))
   `(magit-log-author ((t (:foreground ,gruber-custom-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground gruber-custom-green
                                            :background gruber-custom-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground gruber-custom-niagara
                                           :background gruber-custom-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground gruber-custom-yellow
                                          :background gruber-custom-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground gruber-custom-fg
                                          :background gruber-custom-bg+1))))
   `(magit-item-highlight ((t (:background ,gruber-custom-bg+1))))
   `(magit-tag ((t ,(list :foreground gruber-custom-yellow
                          :background gruber-custom-bg))))
   `(magit-blame-heading ((t ,(list :background gruber-custom-bg+1
                                    :foreground gruber-custom-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,gruber-custom-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background gruber-custom-bg+1
                          :foreground gruber-custom-white))))
   `(mode-line-buffer-id ((t ,(list :background gruber-custom-bg+1
                                    :foreground gruber-custom-white))))
   `(mode-line-inactive ((t ,(list :background gruber-custom-bg+1
                                   :foreground gruber-custom-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,gruber-custom-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,gruber-custom-niagara))))
   `(org-column ((t (:background ,gruber-custom-bg-1))))
   `(org-column-title ((t (:background ,gruber-custom-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,gruber-custom-green))))
   `(org-todo ((t (:foreground ,gruber-custom-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,gruber-custom-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground gruber-custom-black
                        :background gruber-custom-fg+2))))
   `(isearch-fail ((t ,(list :foreground gruber-custom-black
                             :background gruber-custom-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground gruber-custom-fg+1
                                       :background gruber-custom-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,gruber-custom-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,gruber-custom-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,gruber-custom-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,gruber-custom-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,gruber-custom-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground gruber-custom-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,gruber-custom-fg))))
   `(speedbar-highlight-face ((t (:background ,gruber-custom-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,gruber-custom-red))))
   `(speedbar-tag-face ((t (:foreground ,gruber-custom-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,gruber-custom-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background gruber-custom-bg
                                 :foreground gruber-custom-bg+1))))
   `(whitespace-tab ((t ,(list :background gruber-custom-bg
                               :foreground gruber-custom-bg+1))))
   `(whitespace-hspace ((t ,(list :background gruber-custom-bg
                                  :foreground gruber-custom-bg+2))))
   `(whitespace-line ((t ,(list :background gruber-custom-bg+2
                                :foreground gruber-custom-red+1))))
   `(whitespace-newline ((t ,(list :background gruber-custom-bg
                                   :foreground gruber-custom-bg+2))))
   `(whitespace-trailing ((t ,(list :background gruber-custom-red
                                    :foreground gruber-custom-red))))
   `(whitespace-empty ((t ,(list :background gruber-custom-yellow
                                 :foreground gruber-custom-yellow))))
   `(whitespace-indentation ((t ,(list :background gruber-custom-yellow
                                       :foreground gruber-custom-red))))
   `(whitespace-space-after-tab ((t ,(list :background gruber-custom-yellow
                                           :foreground gruber-custom-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background gruber-custom-brown
                                            :foreground gruber-custom-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,gruber-custom-bg+1 :foreground ,gruber-custom-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,gruber-custom-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,gruber-custom-bg+3 :background ,gruber-custom-bg+4))))
   `(term-color-red ((t (:foreground ,gruber-custom-red-1 :background ,gruber-custom-red-1))))
   `(term-color-green ((t (:foreground ,gruber-custom-green :background ,gruber-custom-green))))
   `(term-color-blue ((t (:foreground ,gruber-custom-niagara :background ,gruber-custom-niagara))))
   `(term-color-yellow ((t (:foreground ,gruber-custom-yellow :background ,gruber-custom-yellow))))
   `(term-color-magenta ((t (:foreground ,gruber-custom-wisteria :background ,gruber-custom-wisteria))))
   `(term-color-cyan ((t (:foreground ,gruber-custom-quartz :background ,gruber-custom-quartz))))
   `(term-color-white ((t (:foreground ,gruber-custom-fg :background ,gruber-custom-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,gruber-custom-fg :background ,gruber-custom-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,gruber-custom-brown :background ,gruber-custom-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,gruber-custom-brown :background ,gruber-custom-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,gruber-custom-fg :background ,gruber-custom-bg-1))))
   `(company-tooltip-mouse ((t (:background ,gruber-custom-bg-1))))
   `(company-tooltip-common ((t (:foreground ,gruber-custom-green))))
   `(company-tooltip-common-selection ((t (:foreground ,gruber-custom-green))))
   `(company-scrollbar-fg ((t (:background ,gruber-custom-bg-1))))
   `(company-scrollbar-bg ((t (:background ,gruber-custom-bg+2))))
   `(company-preview ((t (:background ,gruber-custom-green))))
   `(company-preview-common ((t (:foreground ,gruber-custom-green :background ,gruber-custom-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,gruber-custom-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,gruber-custom-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,gruber-custom-green))))
   `(orderless-match-face-2 ((t (:foreground ,gruber-custom-brown))))
   `(orderless-match-face-3 ((t (:foreground ,gruber-custom-quartz))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'gruber-custom)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; gruber-custom-theme.el ends here.
