(deftheme minimal "Minimalistic theme based on base16 colors.")

(defvar base16-colors-alist
  '(("black" . "#181818")
    ("gray1" . "#282828")
    ("gray2" . "#383838")
    ("gray3" . "#585858")
    ("gray4" . "#b8b8b8")
    ("gray5" . "#d8d8d8")
    ("gray6" . "#e8e8e8")
    ("white" . "#f8f8f8")
    ("red" . "#ab4642")
    ("orange" . "#dc9656")
    ("yellow" . "#f7ca88")
    ("green" . "#a1b56c")
    ("turquoise" . "#86c1b9")
    ("blue" . "#7cafc2")
    ("purple" . "#ba8baf")
    ("brown" . "#a16046")))

(defmacro base16/with-color-variables (&rest body)
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   base16-colors-alist))
     ,@body))

;;; Theme Faces
(base16/with-color-variables
  (custom-theme-set-faces
   'minimal
   `(button ((t (:foreground ,blue :underline nil :weight normal))))
   `(compilation-mode-line-exit ((t (:foreground ,gray6 :background ,gray6))))
   `(cursor ((t (:foreground nil :background ,red))))
   `(default ((t (:foreground ,black :background ,white))))
   `(fringe ((t (:foreground ,gray6 :background ,white))))
   `(header-line ((t (:inherit mode-line))))
   `(hi-yellow ((t (:foreground ,red :background ,nil))))
   `(isearch ((t (:foreground nil :background ,gray6))))
   `(isearch-fail ((t (:foreground nil :background ,orange))))
   `(lazy-highlight ((t (:foreground nil :background ,gray6))))
   `(linum  ((t (:foreground ,gray4 :background ,white))))
   `(minibuffer-prompt ((t (:foreground ,red :background nil))))
   `(mode-line ((t (:foreground ,gray6 :background ,gray6 :box nil))))
   `(mode-line-buffer-id ((t (:weight normal))))
   `(mode-line-inactive ((t (:inherit mode-line))))
   `(region ((t (:foreground nil :background ,green))))
   `(secondary-selection ((t (:foreground nil :background ,gray6))))
   `(trailing-whitespace ((t (:foreground nil :background ,red))))

   `(ace-jump-face-background ((t (:foreground ,gray4 :background nil))))
   `(ace-jump-face-foreground ((t (:foreground ,red :background nil))))

   `(anzu-mode-line ((t (:inherit mode-line))))
   `(anzu-replace-highlight ((t (:foreground nil :background ,gray6))))
   `(anzu-replace-to ((t (:foreground ,red :background ,gray6))))

   `(custom-face-tag ((t (:foreground nil :background nil))))
   `(custom-visibility ((t (:foreground ,blue :background nil))))
   `(custom-link ((t (:foreground ,blue :background nil))))

   `(diff-added ((t (:foreground ,green :background nil))))
   `(diff-removed ((t (:foreground ,red :background nil))))
   `(diff-context ((t (:foreground ,black :background nil))))
   `(diff-refine-added ((t :inherit diff-added :background ,gray2)))
   `(diff-refine-change ((t :inherit diff-changed :background ,gray2)))
   `(diff-refine-removed ((t :inherit diff-removed :background ,gray2)))
   `(diff-header ((t (:foreground ,black :background nil))))
   `(diff-file-header ((t (:foreground ,black :background nil))))
   `(diff-hunk-header ((t (:foreground ,black :background nil))))

   `(eldoc-highlight-function-argument ((t (:weight normal :background ,gray6))))

   `(eshell-prompt ((t (:foreground ,gray4 :background nil))))

   `(font-lock-function-name-face ((t (:foreground ,red :background nil))))

   `(helm-action ((t (:foreground ,black :background ,white :underline nil))))
   `(helm-candidate-number ((t (:foreground ,gray6 :background ,gray6))))
   `(helm-header ((t (:inherit mode-line))))
   `(helm-selection ((t (:foreground ,black :background ,gray6 :underline nil))))
   `(helm-source-header ((t (:foreground ,black :background ,white :underline nil))))
   `(helm-buffer-file ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-buffer-directory ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-buffer-process ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-buffer-size ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-buffer-not-saved ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-ff-directory ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-ff-executable ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-ff-file ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-ff-invalid-symlink ((t (:foreground ,black :background ,red :underline nil :italic nil))))
   `(helm-ff-prefix ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-ff-symlink ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-history-remote ((t (:foreground ,black :background ,orange :underline nil :italic nil))))
   `(helm-history-deleted ((t (:foreground ,black :background ,red :underline nil :italic nil))))
   `(helm-visible-mark ((t (:foreground ,black :background ,yellow :underline nil :italic nil))))
   `(helm-separator ((t (:foreground ,gray6 :background ,nil :underline nil :italic nil))))
   `(helm-prefarg ((t (:foreground ,red :background ,white :underline nil :italic nil))))
   `(helm-M-x-key ((t (:foreground ,blue :background ,white :underline nil :italic nil))))

   `(magit-item-highlight ((t (:foreground nil :background nil))))
   `(magit-process-ok ((t (:foreground nil :background nil))))
   `(magit-process-ng ((t (:foreground nil :background ,orange))))
   `(magit-section-title ((t (:foreground nil :background nil))))
   `(magit-branch ((t (:foreground nil :background nil))))
   `(magit-log-sha1 ((t (:foreground ,gray4 :background nil))))
   `(magit-log-author ((t (:foreground ,black :background nil))))
   `(magit-log-head-label-head ((t (:foreground ,gray4 :background nil))))
   `(magit-log-head-label-local ((t (:foreground ,gray4 :background nil))))
   `(magit-log-head-label-default ((t (:foreground ,gray4 :background nil))))
   `(magit-log-head-label-remote ((t (:foreground ,gray4 :background nil))))
   `(magit-log-head-label-tags ((t (:foreground ,gray4 :background nil))))
   `(magit-key-mode-button-face ((t (:foreground ,gray4 :background nil))))
   `(magit-key-mode-header-face ((t (:foreground ,gray4 :background nil))))
   `(magit-key-mode-switch-face ((t (:foreground ,green :background nil))))
   `(magit-diff-merge-current ((t (:foreground ,black :background nil))))
   `(magit-tag ((t (:foreground ,gray4 :background nil))))

   `(org-done ((t (:foreground ,black :background ,white))))
   `(org-todo ((t (:foreground ,black :background ,white))))

   `(rng-error ((t (:foreground nil :background ,orange))))

   `(show-paren-match ((t (:foreground nil :background ,green))))
   `(show-paren-mismatch ((t (:foreground nil :background ,orange))))

   `(wgrep-face ((t (:foreground ,green :background ,nil))))
   `(wgrep-done-face ((t (:foreground ,black :background ,nil))))
   ))

(provide-theme 'minimal)
