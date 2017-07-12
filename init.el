



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)



;;设置新的插件源
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))



;;隐藏工具栏
(tool-bar-mode -1)

;;隐藏滚动条
(scroll-bar-mode -1)

;;显示行号
(global-linum-mode t)

;;打开配置文件的函数
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;;绑定快捷键f1 为打开配置文件
(global-set-key (kbd "<f1>")
		'open-init-file)

;;启动自动补全
(global-company-mode)

;;设置光标样式为普通bar样式
(setq-default cursor-type 'bar)

;;启动elisp括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;自动高亮光标所在的行
(global-hl-line-mode)

;;加载新主题
(load-theme 'monokai t)

;;安装空格删除插件
(require 'hungry-delete)
(global-hungry-delete-mode)


;;定义打开插件列表的函数
(defun open-pkg-list ()
  (interactive)
  (package-refresh-contents)
  (package-list-packages))

;;绑定f2打开插件列表
(global-set-key (kbd "<f2>")
		'open-pkg-list)


;;开启增强功能插件
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;;配置增强版本M-x
(global-set-key (kbd "M-x")
		'counsel-M-x)

;;配置增强版本搜索
(global-set-key (kbd "\C-s")
		'swiper)

;;配置增强版文件查找
(global-set-key (kbd "C-x C-f")
		'counsel-find-file)

;;设置自动补全时间
(setq-default company-idle-delay 0.01)

;;设置左右括号自动补齐
(smartparens-global-mode t)

;;设置合适字体
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family #("微软雅黑" 0 4 (charset chinese-gbk)) :foundry "outline" :slant normal :weight normal :height 100 :width normal)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a49760e39bd7d7876c94ee4bf483760e064002830a63e24c2842a536c6a52756" default)))
 '(eldoc-idle-delay 0.1)
 '(package-selected-packages
   (quote
    (nodejs-repl smartparens counsel swiper smex hungry-delete monokai-theme company))))
