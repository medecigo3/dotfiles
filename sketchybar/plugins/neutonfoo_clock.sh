#!/usr/bin/env zsh

# Load Catppuccin colors
source "$HOME/.config/catppuccin/catppuccin-mocha.sh"

sketchybar --add item clock right \
    --set clock \
    icon=󰃰 \
    icon.color=$CAT_RED \
    update_freq=10 \
    --set $NAME label="$(date '+%a %b %-d %-H:%M')"
