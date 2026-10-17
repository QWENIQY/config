(menu-bar-mode -1)
(tool-bar-mode -1)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

(ido-mode 1)
(setq ido-everywhere t)                ; use ido for all completing-read prompts
(setq ido-enable-flex-matching t)     ; match characters out of order (e.g. "rc" matches "readme.config")
(setq ido-auto-merge-work-directories-length -1)  ; don't auto-merge recent dirs (avoids clutter)
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)(ido-mode 1)

(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/"))
(load-theme 'q t)
