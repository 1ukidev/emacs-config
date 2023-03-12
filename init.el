;; Remover boas vindas
(setq inhibit-startup-screen t)
(defun display-startup-echo-area-message ()
  (message ""))
(setq initial-scratch-message "")

;; Remover menus
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Remover barra de rolagem
(scroll-bar-mode -1)

;; Números nas linhas
(global-linum-mode t)

;; Definir fonte
(set-face-attribute 'default nil :font "monospace" :height 120)
(setq-default cursor-type 'bar)

;; Fechar colchetes automaticamente
(electric-pair-mode t)

;; Desativar arquivos de backup
(setq make-backup-files nil)

;; Ativar abas
; (tab-bar-mode t)

;; Ativar transparência
(set-frame-parameter (selected-frame) 'alpha '(90 90))
(add-to-list 'default-frame-alist '(alpha 90 90))

;; org-mode
(setq org-hide-emphasis-markers t)
(setq org-image-actual-width nil)
(add-hook 'text-mode-hook 'visual-line-mode)

;; Pacotes
(require 'package)
(setq package-enable-at-startup nil)

; MELPA
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package almost-mono-themes
  :ensure t
  :config
  (load-theme 'almost-mono-black t))
  ;; (load-theme 'almost-mono-gray t)
  ;; (load-theme 'almost-mono-cream t)
  ;; (load-theme 'almost-mono-white t)

(use-package which-key
  :ensure t
  :config
  (progn
    (which-key-mode)))

(use-package pdf-tools
  :ensure t
  :config
  (progn
    (pdf-loader-install)))

(use-package org-bullets
  :hook (org-mode . org-bullets-mode))

;; MELPA stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(almost-mono-theimes use-package))
 '(warning-suppress-types '((pdf-view))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
