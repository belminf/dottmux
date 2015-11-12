Installing:
-----------
```
# SSH key
git clone --recursive git@github.com:belminf/dottmux.git ~/.tmux

# HTTP
git clone --recursive https://github.com/belminf/dottmux.git ~/.tmux

# Link config
ln -s ~/.tmux.conf ~/.tmux/tmux.conf
```

Keys:
-----
Super: <kbd>Ctrl</kbd><kbd>q</kbd>

* <kbd>Ctrl</kbd><kbd>q</kbd>: Next window
* <kbd>s</kbd>: Open SSH window to provide host
* <kbd>p</kbd>: Paste clipboard
* <kbd>v</kbd>: Begin copy mode
* [Copy mode]<kbd>v</kbd>: Begin selection
* [Copy mode]<kbd>y</kbd>: Yank (copy) selection
