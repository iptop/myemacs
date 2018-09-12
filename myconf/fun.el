(require 'cl-lib)


;;打开配置文件的函数
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;定义打开插件列表的函数
(defun open-pkg-list ()
  (interactive)
  (package-refresh-contents)
  (package-list-packages))

;;快速放大
(defun my-zoom-in ()
  (interactive)
  (setq my-zoom-in-i 0)
  (loop do (setq my-zoom-in-i (1+ my-zoom-in-i))
	(zoom-frm-in)
	while
	(< my-zoom-in-i 10)))
;;快速缩小
(defun my-zoom-out ()
  (interactive)
  (setq my-zoom-out-i 0)
  (loop do (setq my-zoom-out-i (1+ my-zoom-out-i))
	(zoom-frm-out)
	while
	(< my-zoom-out-i 10)))

;;设置自增计数器
(setq auto-increment-counter 0)

;;插入自增变量
(defun insert-increment ()
	(interactive)
	(setq auto-increment-counter (+ auto-increment-counter 1))
	(insert (number-to-string auto-increment-counter)))

;;重置自增变量
(defun clear-increment()
	(interactive)
	(setq auto-increment-counter 0))
;;全屏
(defun fullscreen ()
	(interactive)
	(set-frame-parameter nil 'fullscreen
											 (if (frame-parameter nil 'fullscreen) nil 'fullboth)))
