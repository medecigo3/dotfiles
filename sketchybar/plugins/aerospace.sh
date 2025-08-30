#!/usr/bin/env bash

# Load Catppuccin colors
source "$HOME/.config/catppuccin/catppuccin-mocha.sh"

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.color=$CAT_MAUVE label.shadow.drawing=on icon.shadow.drawing=on background.border_width=2
else
  sketchybar --set $NAME background.color=$CAT_SURFACE0_TRANSPARENT label.shadow.drawing=off icon.shadow.drawing=off background.border_width=0
fi

# Reposition front_app after workspace changes
# Get all workspace items sorted numerically
workspaces=$(sketchybar --query bar | grep -o 'space\.[0-9]*' | sort -V)
last_workspace=$(echo "$workspaces" | tail -1)

if [ -n "$last_workspace" ]; then
    sketchybar --move front_app after "$last_workspace"
fi
