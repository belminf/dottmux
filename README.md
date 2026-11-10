# tmux config

A single `tmux.conf` with no plugins. Catppuccin Mocha theme, palette inlined at the top.

## Setup

Needs tmux ≥ 3.2. Optional: `wl-clipboard` (Wayland) for native copy/paste.

```bash
git clone git@github.com:belminf/dottmux.git ~/.tmux
make init      # symlink ~/.tmux.conf
make update    # git pull
```

- Per-machine tweaks: `~/.tmux.local.conf`
- Status-left widgets: executable scripts in `~/.tmux/monitors/` that print a string (gitignored)

## Keys

Prefix: <kbd>Ctrl</kbd>+<kbd>Space</kbd> (again = last window). Reload: <kbd>R</kbd>

### Windows

| Key | Action |
| --- | --- |
| <kbd>c</kbd> / <kbd>C</kbd> | New window (named / random name) |
| <kbd>.</kbd> | Rename |
| <kbd>&lt;</kbd> / <kbd>&gt;</kbd> | Shift window left / right |
| <kbd>,</kbd> | Swap with window N |
| <kbd>n</kbd> / <kbd>P</kbd> | Next / previous |

### Panes

| Key | Action |
| --- | --- |
| <kbd>h</kbd><kbd>j</kbd><kbd>k</kbd><kbd>l</kbd> | Focus (<kbd>H</kbd><kbd>J</kbd><kbd>K</kbd><kbd>L</kbd> resizes) |
| <kbd>\|</kbd> / <kbd>-</kbd> | Split side-by-side / stacked |
| <kbd>\\</kbd> / <kbd>_</kbd> | Same, full window width/height |
| <kbd>Space</kbd> | Cycle layout: even squares → side by side → stacked |
| <kbd>z</kbd> | Zoom |
| <kbd>S</kbd> | Sync input to all panes |

Moving panes:

| Key | Action |
| --- | --- |
| <kbd>{</kbd> / <kbd>}</kbd> | Swap pane with previous / next (repeatable) |
| <kbd>!</kbd> | Pane → its own window |
| <kbd>X</kbd> | Send pane to window N |
| <kbd>M</kbd> | Pull pane in from window N |

### Copy / paste

| Key | Action |
| --- | --- |
| <kbd>v</kbd> | Copy mode (then <kbd>v</kbd> select, <kbd>y</kbd> yank, <kbd>Esc</kbd> quit) |
| <kbd>p</kbd> / middle-click | Paste tmux buffer / system clipboard |
