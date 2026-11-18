;; -*- lexical-binding: t; -*-

(deftheme minimal-terminal
  "Minimal theme that leaves terminal colours untouched.")

(custom-theme-set-faces
 'minimal-terminal

 ;; Keywords: if, else, return, while, etc.
 '(font-lock-keyword-face
   ((t (:foreground "#ffdd33" :background unspecified :weight bold))))

 ;; Comments
 '(font-lock-comment-face
   ((t (:foreground "#cc8c3c" :background unspecified))))

 ;; Documentation comments
 '(font-lock-comment-delimiter-face
   ((t (:foreground "ddd1bc" :background unspecified)))))

(provide-theme 'minimal-terminal)
