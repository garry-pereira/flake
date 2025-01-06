;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT MESSAGES
(message "loading home-manager configuration..")
(message "init.el location:           %s" user-init-file)
(message "early-init.el location:     %s" early-init-file)
(message "site-start.el location:     %s" (locate-library "site-start"))
(message "default.el location:        %s" (locate-library "default"))
(message "inhibit-default-init value: %s" inhibit-default-init)
(dolist (path load-path) (message "%s" path))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; DEFAULTS
(setq standard-indent 2)
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)

(set-face-attribute 'default nil :height 240)
(load-theme 'modus-vivendi t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;
; PACKAGES AND INITS
(require 'evil)
(evil-mode 1)

(require 'which-key)
(which-key-mode)

(require 'general)
(general-evil-setup t)

(require 'nix-mode)
(add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode))
;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; LEADER
(general-create-definer leader
:keymaps 'normal
:prefix "SPC")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; KEYMAPS
(leader
    "DEL"   'keyboard-quit

    "b"     '(:ignore t :which-key "buffer")
    "b DEL" 'keyboard-quit
    "b k"   'kill-buffer

    "e"     'eval-last-sexp

    "f"     '(:ignore t :which-key "find")
    "f DEL" 'keyboard-quit
    "f f"   'dired

    "x"     '(:ignore t :which-key "emacs")
    "x DEL" 'keyboard-quit
    "x x"   'execute-extended-command

    "s"     'dired)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

