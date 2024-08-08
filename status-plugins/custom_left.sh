#!/bin/sh

build_left_status_module() {
  local index="$1"
  local icon="$2"
  local color="$3"
  local text="$4"

  local show_icon="#[fg=$thm_bg,bg=$color,nobold,nounderscore,noitalics] $icon"
  local show_text="#[fg=$thm_fg,bg=$thm_gray]$text"
  local show_right_separator="#[fg=$color,bg=default,nobold,nounderscore,noitalics]$status_right_separator"

  echo "$show_text$show_icon$show_right_separator"
}

show_custom_left() {
  local index icon color text module

  index="$1"
  icon="$(get_tmux_option "@catppuccin_custom_left_icon" "󰃰")"
  color="$(get_tmux_option "@catppuccin_custom_left_color" "$thm_blue")"
  text="$(get_tmux_option "@catppuccin_custom_left_text")"

  echo "$(build_left_status_module "$index" "$icon" "$color" "$text")"
}
