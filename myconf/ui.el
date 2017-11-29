;;隐藏工具栏
(tool-bar-mode -1)

;;隐藏滚动条
(scroll-bar-mode -1)

;;显示行号
(global-linum-mode t)

;;设置行号显示格式
(setq linum-format "%d| ")

;;设置光标样式为普通bar样式
(setq-default cursor-type 'bar)

;;自动高亮光标所在的行
(global-hl-line-mode)

;;加载新主题
(load-theme 'monokai t)

;;关闭tab键缩进
(setq indent-tabs-mode nil)

;;定义设置缩进的函数
(defun set-retract ()
	(interactive)
	;;禁止tab缩进
	(setq indent-tabs-mode nil)
	;;设置tab建宽度
	(setq default-tab-width 2)
	;;设置tab建宽度
	(setq tab-width 2)
	(message "重新设置缩进"))

;;设置缩进
(set-retract)

;;js-mode下设置缩进
(add-hook 'js-mode-hook 'set-retract)

;;vue-mode下设置缩进
(add-hook 'vue-mode-hook 'set-retract)

;;text-mode下设置缩进
(add-hook 'text-mode-hook 'set-retract)

;;web-mode 下设置缩进
(add-hook 'web-mode-hook 'set-retract)


