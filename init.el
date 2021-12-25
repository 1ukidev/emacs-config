(require 'org)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

(setq-default indent-tabs-mode nil)
(setq make-backup-files nil)
(setq org-display-inline-images t)
(setq org-redisplay-inline-images t)
(setq org-startup-with-inline-images "inlineimages")
(set-frame-parameter (selected-frame)'alpha '(95 . 95))

(setq default-frame-alist
      (append (list '(width . 72) '(height . 40))))

(setq org-confirm-elisp-link-function nil)
				  
(global-set-key [(control z)] 'undo)
(global-set-key "\C-x\C-x"    'execute-extended-command)

(set-frame-font "JetBrainsMono Nerd Font 10")

(set-frame-parameter (selected-frame) 'internal-border-width 20)
(setq x-underline-at-descent-line t)
(setq initial-major-mode 'text-mode)
(setq-default line-spacing 0)
(set-default 'cursor-type  '(hbar . 2))
(blink-cursor-mode 0)
(fringe-mode '(0 . 0))

(setq frame-background-mode 'dark)
(set-background-color "#000000")
(set-foreground-color "#ffffff")

(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(menu-bar-mode 0)
(tool-bar-mode 0)
(tooltip-mode  0)
(scroll-bar-mode 0)

(defun mode-line-render (left right)
  "Return a string of `window-width' length containing left, and
   right aligned respectively."
  (let* ((available-width (- (window-total-width) (length left) )))
    (format (format "%%s %%%ds" available-width) left right)))

(setq-default header-line-format
  '(:eval (mode-line-render

   (format-mode-line
    (list
     (propertize "File " 'face `(:weight regular))
     "%b"
     '(:eval (if (and buffer-file-name (buffer-modified-p))
         (propertize "(modified)" 
		     'face `(:weight light
			     :foreground "#ffffff"))))))
   (format-mode-line
    (propertize "%3l:%2c"
	'face `(:weight light :foreground "#ffffff"))))))

(set-face-attribute 'region nil
		    :background "#666666")
(set-face-attribute 'highlight nil
		    :foreground "white"
		    :background "#000000")
(set-face-attribute 'org-level-1 nil
		    :foreground "white"
		    :weight 'regular)
(set-face-attribute 'org-link nil
		    :underline nil
		    :foreground "white blue")
(set-face-attribute 'org-verbatim nil
		    :foreground "white blue")
(set-face-attribute 'bold nil
 		    :foreground "#666666"
		    :weight 'regular)
(set-face-attribute 'minibuffer-prompt nil
		    :foreground "white")

(setq-default mode-line-format "")

(set-face-attribute 'header-line nil
;;                  :weight 'regular
		    :height 140
                    :underline "white"
                    :foreground "white"
		    :background "black"
                    :box `(:line-width 3 :color "black" :style nil))
(set-face-attribute 'mode-line nil
                    :height 10
                    :underline "white"
                    :background "black"
		    :foreground "white"
                    :box nil)
(set-face-attribute 'mode-line-inactive nil
                    :box nil
                    :inherit 'mode-line)
(set-face-attribute 'mode-line-buffer-id nil 
                    :weight 'light)

(setq org-hide-emphasis-markers t)
