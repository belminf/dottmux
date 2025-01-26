init:
	git submodule update --init
	ln -sf ~/.tmux/tmux.conf ~/.tmux.conf

update:
	git pull
	git submodule deinit --force --all
	git submodule update --init --recursive

.PHONY: init update
