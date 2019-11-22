# tmux config

## Setup

### Requirements

Arch:

```
yay -S fpp urlview xsel
```

macOS:

```
brew install reattach-to-user-namespace fpp urlview
```

### Install

Clone and link

```
git clone --recursive git@github.com:belminf/dottmux.git ~/.tmux
ln -s ~/.tmux/tmux.conf ~/.tmux.conf
```

Then, you have to load plugins: <kbd>Ctrl</kbd><kbd>Space</kbd>+<kbd>Shift</kbd><kbd>I</kbd>

## Update

```
git pull
git submodule update --init
```

## Keys:

Super: <kbd>Ctrl</kbd><kbd>Space</kbd>

- <kbd>Ctrl</kbd><kbd>Space</kbd>: Next window
- <kbd>R</kbd>: Reload configuration
- Panes:
  - <kbd>Tab</kbd>: Next pane
  - <kbd>Shift</kbd><kbd>S</kbd>: Toggle synchronized panes
  - Split:
    - <kbd>|</kbd>: Horizontal split
    - <kbd>\_</kbd>: Vertical split
- Clipboard:
  - <kbd>P</kbd>: Paste clipboard
  - <kbd>V</kbd>: Begin copy mode
  - In copy mode:
    - <kbd>V</kbd>: Begin selection
    - <kbd>Y</kbd>: Yank (copy) selection
