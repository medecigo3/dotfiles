#!/usr/bin/env zsh

sketchybar --add item clock right \
    --set clock \
    icon=󰃰 \
    icon.color=0xffed8796 \
    update_freq=10 \
    --set $NAME label="$(date '+%a %b %-d %-H:%M')"
