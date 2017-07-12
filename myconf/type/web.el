;;配置网页类型文件的处理方式
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))

(require 'emmet-mode)

(defun my-web-mode-hook ()
  "Hook for `web-mode'."
  (emmet-mode t))

;;设置web模式钩子
(add-hook 'web-mode-hook 'my-web-mode-hook)
