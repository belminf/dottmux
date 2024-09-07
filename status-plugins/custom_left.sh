#!/usr/bin/env bash

build_left_status_module() {
  local index="$1"
  local icon="$2"
  local color="$3"
  local text="$4"

  local print_text="#[fg=#000000,bg=$color,nobold,nounderscore,noitalics]$icon"
  [ -n "$text" ] && print_text+="#[fg=#000000,bg=$color]$text"

  echo "$print_text"
}

show_custom_left() {
  local index icon color text module

  index="$1"
  icon="$(get_tmux_option "@catppuccin_custom_left_icon" "󰃰")"
  color="$(get_tmux_option "@catppuccin_custom_left_color" "$thm_blue")"
  text="$(get_tmux_option "@catppuccin_custom_left_text")"

  echo "$(build_left_status_module "$index" "$icon" "$color" "$text")"
}
