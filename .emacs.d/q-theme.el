(deftheme q "A custom QWENIQY Theme.")

(custom-theme-set-faces
 'q

 ;; Default BG and FG Colours
 '(default ((t (:foreground "#24292E" :background "#FAFAFA"))))

 ;; Line Numbers
 (set-face-foreground 'line-number "#a4d3e2")

 ;; Active Line Number
 (set-face-attribute 'line-number-current-line nil :foreground "#6ab5d2" :weight 'bold)

 ;; Comments
(set-face-attribute 'font-lock-comment-face nil :foreground "#6E7781")

;; Comment delimiters (e.g. /*, */, #)
(set-face-attribute 'font-lock-comment-delimiter-face nil :foreground "#6E7781")

;; String literals
(set-face-attribute 'font-lock-string-face nil :foreground "#C4705A")

;; Doc strings / embedded documentation
(set-face-attribute 'font-lock-doc-face nil :foreground "#A65B47")

;; Markup inside doc strings (Javadoc, Doxygen, etc.)
(set-face-attribute 'font-lock-doc-markup-face nil :foreground "#0066CC")

;; Keywords (if, for, def, return, etc.)
(set-face-attribute 'font-lock-keyword-face nil :foreground "#00886B" :weight 'bold)

;; Function names at definition/declaration
(set-face-attribute 'font-lock-function-name-face nil :foreground "#0088E6" :weight 'normal)

;; Function names at call sites
(set-face-attribute 'font-lock-function-call-face nil :foreground "#0044B3" :weight 'normal)

;; Variable names at definition/declaration
(set-face-attribute 'font-lock-variable-name-face nil :foreground "#1B6CA8" :weight 'normal)

;; Variable names at use sites
(set-face-attribute 'font-lock-variable-use-face nil :foreground "#0085A1" :weight 'normal)

;; User-defined types
(set-face-attribute 'font-lock-type-face nil :foreground "#0066CC" :weight 'bold)

;; Constants (NULL, true, false, etc.)
(set-face-attribute 'font-lock-constant-face nil :foreground "#C71585" :weight 'normal)

;; Built-in function names
(set-face-attribute 'font-lock-builtin-face nil :foreground "#008A4D" :weight 'normal)

;; Preprocessor directives (#include, #define, etc.)
(set-face-attribute 'font-lock-preprocessor-face nil :foreground "#6A00F4" :weight 'bold)

;; Numeric literals
(set-face-attribute 'font-lock-number-face nil :foreground "#4B00E0" :weight 'normal)

;; Operators (+, =, ->, etc.)
(set-face-attribute 'font-lock-operator-face nil :foreground "#E64A00" :weight 'bold)

;; Escape sequences in strings (\n, \t, etc.)
(set-face-attribute 'font-lock-escape-face nil :foreground "#D96B00" :weight 'normal)

;; Negation characters (!, ~)
(set-face-attribute 'font-lock-negation-char-face nil :foreground "#D96B00" :weight 'bold)

;; Warnings / unusual constructs
(set-face-attribute 'font-lock-warning-face nil :foreground "#B85B00" :weight 'bold :style 'underline)

;; Property/field declarations (structs, etc.)
(set-face-attribute 'font-lock-property-name-face nil :foreground "#00838F" :weight 'normal)

;; Property/field references
(set-face-attribute 'font-lock-property-use-face nil :foreground "#00838F" :weight 'normal)

;; Punctuation (general)
(set-face-attribute 'font-lock-punctuation-face nil :foreground "#E64A00" :weight 'bold)

;; Brackets: (), [], {}
(set-face-attribute 'font-lock-bracket-face nil :foreground "#E64A00" :weight 'bold)

;; Delimiters: ;, :, ,
(set-face-attribute 'font-lock-delimiter-face nil :foreground "#E64A00" :weight 'bold)

;; Other punctuation
(set-face-attribute 'font-lock-misc-punctuation-face nil :foreground "#E64A00" :weight 'bold)   

 )

(provide-theme 'q)

