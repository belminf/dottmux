#!/usr/bin/env bash

WINDOW_NAMES=(
  "jarule"
  "dmx"
  "jayz"
  "bigsean"
  "jcole"
  "6lack"
  "jid"
  "earthgang"
  "frankocean"
  "tyler"
  "paak"
  "nas"
  "cudi"
  "dababy"
  "kyle"
  "rocky"
  "amine"
  "bigsean"
  "chance"
  "gambino"
  "kdot"
  "lupe"
  "sza"
  "travis"
  "wale"
  "leikeli"
  "jeter"
  "judge"
  "mariano"
  "bernie"
  "tino"
)

for name in $(echo "${WINDOW_NAMES[@]}" | tr ' ' '\n' | sort -R); do
  if ! tmux list-windows -F "#W" | grep -q "$name"; then
    tmux new-window \; rename-window "$name"
    exit
  fi
done

echo "Error: Unable to generate window name"
