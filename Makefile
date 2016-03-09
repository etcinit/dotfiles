current_dir = $(shell pwd)

all:
	git submodule update --init --recursive
	cd nvim/bundle/vim-proc \
		&& make
	cd nvim/bundle/deoplete-go \
		&& make
install:
	ln -sf $(current_dir)/nvim ~/.config/nvim
	ln -sf $(current_dir)/stack ~/.stack

