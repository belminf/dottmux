#!/usr/bin/env bash

# Configuration
TMUX_SESSION_GROUP="term"

# Break on error
set -e

# Check if any unattached session
UNATTACHED_SESSION="$(tmux list-session 2>/dev/null | grep -E "\(group ${TMUX_SESSION_GROUP}\)$" | head -n 1 | cut -d':' -f1)"

# If we found an unattached session, attach to it
if [ -n "$UNATTACHED_SESSION" ]; then
  tmux attach-session -t "$UNATTACHED_SESSION"

# Otherwise, create a new session in the group
else
  tmux new-session -t "$TMUX_SESSION_GROUP"
fi
