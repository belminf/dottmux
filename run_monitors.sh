#!/usr/bin/env bash
# Status-left hook: runs each executable ~/.tmux/monitors/*.sh and joins the
# non-empty output into pills. Prints nothing if there are no monitors.
# (monitors/ is gitignored — machine-specific.)

pill='#[fg=#b4befe,bg=#313244]'
out=""
for script in ~/.tmux/monitors/*.sh; do
  [ -x "$script" ] || continue
  result="$("$script")" || continue
  [ -n "$result" ] && out+="${pill} ${result} #[default] "
done
printf '%s' "$out"
