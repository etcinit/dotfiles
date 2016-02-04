all:
	cd nvim/bundle/vim-proc \
		&& make
install:
	ln -sf nvim ~/.config/nvim
	ln -sf stack ~/.stack

