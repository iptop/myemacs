;;隐藏工具栏
(tool-bar-mode -1)

;;隐藏滚动条
(scroll-bar-mode -1)

;;显示行号
(global-linum-mode t)

;;设置光标样式为普通bar样式
(setq-default cursor-type 'bar)

;;自动高亮光标所在的行
(global-hl-line-mode)

;;加载新主题
(load-theme 'spacemacs-dark t)
