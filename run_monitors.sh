#!/bin/bash

# Get tmux variables
PREFIX=$(tmux show-options -gv @monitor_prefix 2>/dev/null || echo "")
SEPARATOR=$(tmux show-options -gv @monitor_separator 2>/dev/null || echo "   ")
SUFFIX=$(tmux show-options -gv @monitor_suffix 2>/dev/null || echo "")

# Run all monitor scripts
output=""
for script in ~/.tmux/monitors/*.sh; do
    if [ -x "$script" ]; then
        result=$("$script")
        if [ -n "$result" ]; then
            if [ -n "$output" ]; then
                output="$output$SEPARATOR$result"
            else
                output="$result"
            fi
        fi
    fi
done

# Print the final result
printf "%s%s%s" "$PREFIX" "$output" "$SUFFIX"
