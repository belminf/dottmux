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

For macOS clipboard, need (see `macOS.conf`):
```
brew install reattach-to-user-namespace
```

Keys:
-----
Super: <kbd>Ctrl</kbd><kbd>Space</kbd>

* <kbd>Ctrl</kbd><kbd>Space</kbd>: Next window
* <kbd>R</kbd>: Reload configuration
* Panes:
  * <kbd>Tab</kbd>: Next pane
  * <kbd>Shift</kbd><kbd>S</kbd>: Toggle synchronized panes
  * Split:
    * <kbd>|</kbd>: Horizontal split
    * <kbd>\_</kbd>: Vertical split
* SSH:
  * <kbd>S</kbd>: Open SSH window to provided hosts
  * <kbd>\`</kbd>: Open SSH panes to provided hosts
* Clipboard:
  * <kbd>P</kbd>: Paste clipboard
  * <kbd>V</kbd>: Begin copy mode
  * In copy mode:
    * <kbd>V</kbd>: Begin selection
    * <kbd>Y</kbd>: Yank (copy) selection
