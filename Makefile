current_dir = $(shell pwd)

all:
	git submodule update --init --recursive
	cd nvim/bundle/vim-proc \
		&& make
	cd nvim/bundle/deoplete-go \
		&& make

install: link-neovim link-stack link-fish link-npm link-powerline link-tmux

link-neovim:
	ln -sf $(current_dir)/nvim/ ~/.config/nvim/

link-stack:
	ln -sf $(current_dir)/stack/config.yaml ~/.stack/config.yaml

link-fish:
	ln -sf $(current_dir)/fish/ ~/.config/fish/

link-npm:
	ln -sf $(current_dir)/npm/.npmrc ~/.npmrc

link-powerline:
	ln -sf $(current_dir)/powerline/ ~/.config/powerline/

link-tmux:
	ln -sf $(current_dir)/tmux/tmux.conf ~/.tmux.conf

