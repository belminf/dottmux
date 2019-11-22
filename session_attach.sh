#!/usr/bin/env bash

# Break on error
set -eo pipefail

SESSION_GROUP="default"
WINDOW_NAME="home"

# If no group, create it with a default window
if ! tmux list-sessions 2>/dev/null | grep -q "(group ${SESSION_GROUP})"; then
  echo 'tmux - creating new group'
  tmux new-session -t "$SESSION_GROUP" \; rename-window "$WINDOW_NAME"

# If group, check for sessions
elif UNATTACHED_SESSION="$(tmux list-session | grep -e "\(group ${SESSION_GROUP}\)$" | head -n 1 | cut -d':' -f1)"; then
  echo 'tmux - attaching to unused session'
  tmux attach-session -t "$UNATTACHED_SESSION"

# Otherwise, create a new session in the group
else
  echo 'tmux - creating a new session'
  tmux new-session -t "$SESSION_GROUP"
fi
