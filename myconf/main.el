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

;;自动加载被修改的文件
(global-auto-revert-mode t)



;;禁止自动备份文件
(setq auto-save-default nil)
(setq make-backup-files nil)

;;增强窗口切换
(require 'popwin)
(popwin-mode t)
