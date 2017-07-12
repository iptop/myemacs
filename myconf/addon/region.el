;;配置高级选择并绑定快捷键
(require 'expand-region)

;;扩大选区
(global-set-key (kbd "C-=") 'er/expand-region)

;;缩小选区
(global-set-key (kbd "C--") 'er/contract-region)


