(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(tango-dark))
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(restclient yaml-mode json-mode web-mode vue-mode rust-mode paredit go-mode format-all reformatter dap-mode lsp-ui lsp-mode drag-stuff hungry-delete crux beacon rainbow-delimiters projectile yasnippet-snippets yasnippet which-key company exec-path-from-shell delight diminish gnu-elpa-keyring-update use-package cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Disable files backup function
(setq make-backup-files nil)


;; Config Tab
;;;; This will force Tab to be just oneTab.
(global-set-key (kbd "TAB")'self-insert-command)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-whitespace-mode t)

(setq indent-line-function 'insert-tab)
(setq default-tab-width 4)
(setq backward-delete-char-untabify-method nil)
(defun my-c-mode-hook ()
 (setq c-basic-offset 4
       c-indent-level 4
       c-default-style "bsd"))
(add-hook 'c-mode-common-hook 'my-c-mode-hook)
