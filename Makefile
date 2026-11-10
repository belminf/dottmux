init:
	ln -sf ~/.tmux/tmux.conf ~/.tmux.conf

update:
	git pull --ff-only

.PHONY: init update
