all:
	cd nvim/bundle/vim-proc \
		&& make
install:
	ln -s nvim ~/.config/nvim
	ln -s stack ~/.stack

