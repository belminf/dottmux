#!/usr/bin/env bash
# Create a new window with a random unused name. Usage: rand_win_create.sh [start-dir]

NAMES=(
  jarule dmx jayz bigsean jcole 6lack jid earthgang frankocean tyler paak nas
  cudi dababy kyle rocky amine chance gambino kdot lupe sza travis wale
  leikeli jeter judge mariano bernie tino
)

existing="$(tmux list-windows -F '#W')"

for name in $(printf '%s\n' "${NAMES[@]}" | sort -R); do
  if ! grep -qxF "$name" <<<"$existing"; then
    exec tmux new-window -c "${1:-$PWD}" -n "$name"
  fi
done

tmux display-message "rand_win_create: all names in use"
