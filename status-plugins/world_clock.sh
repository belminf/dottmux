show_world_clock() {
  local index icon color text module

  index="$1"
  icon="$(get_tmux_option "@catppuccin_date_time_icon" "󰃰")"
  color="$(get_tmux_option "@catppuccin_date_time_color" "$thm_blue")"

  text='#(TZ="America/Los_Angeles" date +"%%H:%%M %%Z") | #(date -u +"%%H:%%M %%Z")'

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
