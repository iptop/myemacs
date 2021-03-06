;;自动加载被修改的文件
(global-auto-revert-mode t)

;;禁止自动备份文件
(setq auto-save-default nil)
(setq make-backup-files nil)

;;启动自动补全
(global-company-mode)

;;增强字符删除功能
(require 'hungry-delete)
(global-hungry-delete-mode)

;;自动删除选中部分
(delete-selection-mode t)

;;开启mini buffer增强功能插件
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

;;设置自动补全插件出现时间
(setq-default company-idle-delay 0.01)

;;设置左右括号自动补齐
(smartparens-global-mode t)

;;增强窗口切换
(require 'popwin)
(popwin-mode t)

;;设置默认读入文件编码
(prefer-coding-system 'utf-8)

;;设置写入文件编码
(setq default-buffer-file-coding-system 'utf-8)


;;打开上次的文件记录

;;(load "desktop") 

;;(desktop-load-default)

;;(desktop-read)

;;当emacs退出时保存文件打开状态

;;(add-hook 'kill-emacs-hook

  ;;        '(lambda()(desktop-save "~/")))

;;隐藏菜单栏
(menu-bar-mode 0)

;;启用树形撤销插件
(require 'undo-tree)
(global-undo-tree-mode)

;; 光标移出页面顶部或底部不翻页
;; 而仅是向上或下移动一行
(setq scroll-step 1)
(setq scroll-margin 5)
(setq scroll-conservatively 10000)
