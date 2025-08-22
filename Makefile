init:
	git submodule update --init
	ln -sf ~/.tmux/tmux.conf ~/.tmux.conf

update:
	~/.tmux/plugins/tpm/bin/clean_plugins
	git pull
	git submodule deinit --force --all
	git submodule update --init --recursive
	echo 'Run for "all": Ctrl+Space U'

.PHONY: init update
