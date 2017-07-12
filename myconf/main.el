;;加载ui相关配置文件
(load-file "~/.emacs.d/myconf/ui.el")

;;加载函数定义
(load-file "~/.emacs.d/myconf/fun.el")

;;加载快捷键定义
(load-file "~/.emacs.d/myconf/key.el")

;;修改emacs默认行为
(load-file "~/.emacs.d/myconf/better.el")

;;启动自动补全
(global-company-mode)

;;启动elisp括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;安装空格删除插件
(require 'hungry-delete)
(global-hungry-delete-mode)

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





;;增强窗口切换
(require 'popwin)
(popwin-mode t)
