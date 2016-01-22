Installing:
-----------
```
# SSH key
git clone --recursive git@github.com:belminf/dottmux.git ~/.tmux

# HTTP
git clone --recursive https://github.com/belminf/dottmux.git ~/.tmux

# Link config
ln -s ~/.tmux/tmux.conf ~/.tmux.conf
```

Keys:
-----
Super: <kbd>Ctrl</kbd><kbd>q</kbd>

* <kbd>Ctrl</kbd><kbd>q</kbd>: Next window
* <kbd>s</kbd>: Open SSH window to provided hosts
* <kbd>`</kbd>: Open SSH panes to provided hosts
* <kbd>Tab</kbd>: Next pane
* <kbd>S</kbd>: Toggle synchronized panes
* <kbd>p</kbd>: Paste clipboard
* <kbd>v</kbd>: Begin copy mode
* [Copy mode]<kbd>v</kbd>: Begin selection
* [Copy mode]<kbd>y</kbd>: Yank (copy) selection
