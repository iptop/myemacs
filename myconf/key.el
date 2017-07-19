;;绑定快捷键f1 为打开配置文件
(global-set-key (kbd "<f1>")
		'open-init-file)


;;绑定f2打开插件列表
(global-set-key (kbd "<f2>")
		'open-pkg-list)


;;绑定f11为开始录制宏
(global-set-key (kbd "<f11>")
		'kmacro-start-macro)

;;绑定f12为结束录制宏
(global-set-key (kbd "<f12>")
		'kmacro-end-macro)

;;绑定快捷键f10为播放宏
(global-set-key (kbd "<f10>")
		'kmacro-end-and-call-macro)

;;设置字体缩放快捷键
(global-set-key (kbd "C-<f12>")
		'zoom-frm-in)

(global-set-key (kbd "C-<f11>")
		'zoom-frm-out)


;;快速缩小
(global-set-key (kbd "C-<f9>")
		'my-zoom-out)

;;快速放大
(global-set-key (kbd "C-<f10>")
		'my-zoom-in)

