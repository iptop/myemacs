;;打开配置文件的函数
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;定义打开插件列表的函数
(defun open-pkg-list ()
  (interactive)
  (package-refresh-contents)
  (package-list-packages))
