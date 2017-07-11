


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)



;;隐藏工具栏
(tool-bar-mode -1)

;;隐藏滚动条
(scroll-bar-mode -1)

;;设置缩进
(electric-indent-mode -1)

;;关闭启动画面
(setq inhibit-splash-srceen t)

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
 '(package-selected-packages (quote (company))))
