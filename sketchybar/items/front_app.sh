#!/bin/sh

front_app=(
  label.font="$FONT:Black:12.0"
  icon.background.drawing=on
  display=active
  script="$PLUGIN_DIR/front_app.sh"
  click_script="open -a 'Mission Control'"
)
# Find the last workspace item and position front_app after it
last_workspace=$(sketchybar --query bar | grep -o 'space\.[0-9]' | tail -1)

if [ -n "$last_workspace" ]; then
  # If workspaces exist, add front_app after the last workspace
  sketchybar --add item front_app left         \
             --set front_app "${front_app[@]}" position=left \
             --subscribe front_app front_app_switched \
             --move front_app after $last_workspace
else
  # If no workspaces exist yet, just add normally
  sketchybar --add item front_app left         \
             --set front_app "${front_app[@]}" \
             --subscribe front_app front_app_switched
fi

