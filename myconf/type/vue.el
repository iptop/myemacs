;;设置vue-model


;;进入vue-mode的时候自动打开emmet-mode
(add-hook 'vue-mode-hook (lambda ()
													 (emmet-mode t)))
