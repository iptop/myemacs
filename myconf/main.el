;;加载ui相关配置文件
(load-file "~/.emacs.d/myconf/ui.el")

;;加载函数定义
(load-file "~/.emacs.d/myconf/fun.el")

;;加载快捷键定义
(load-file "~/.emacs.d/myconf/key.el")

;;修改emacs默认行为
(load-file "~/.emacs.d/myconf/better.el")


;;定义批量加载函数
(defun load-files (files dir)
  (if  (> (length files) 0)
      (progn
	(load-file (concat dir (car files)))
	(load-files (cdr files)
		    dir ))))
;;加载各种插件配置
(load-files (cdr (cdr
		  (directory-files
		   "~/.emacs.d/myconf/addon")))
	    "~/.emacs.d/myconf/addon/")

;;加载各种文件类型的配置
(load-files (cdr (cdr
		  (directory-files
		   "~/.emacs.d/myconf/type")))
	    "~/.emacs.d/myconf/type/")






