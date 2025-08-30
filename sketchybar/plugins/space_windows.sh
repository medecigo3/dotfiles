#!/bin/bash

if [ "$SENDER" = "aerospace_workspace_change" ]; then
  # Get all visible workspaces
  visible_workspaces=$(aerospace list-workspaces --format "%{id} %{workspace-is-visible}" | grep "true" | awk '{print $1}')
  
  # Update only visible workspaces
  for workspace in $visible_workspaces; do
    is_focused=$(aerospace list-workspaces --format "%{id} %{workspace-is-focused}" | grep "^$workspace " | awk '{print $2}')
    apps=$(aerospace list-windows --workspace "$workspace" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')
    
    sketchybar --set space.$workspace drawing=on
    
    if [ "${apps}" != "" ]; then
      icon_strip=" "
      while read -r app; do
        icon_strip+=" $($CONFIG_DIR/plugins/icon_map_fn.sh "$app")"
      done <<<"${apps}"
      sketchybar --set space.$workspace label="$icon_strip"
    else
      sketchybar --set space.$workspace label=""
    fi
  done
  
  # Reposition front_app after workspace changes
  workspaces=$(sketchybar --query bar | grep -o 'space\.[0-9]*' | sort -V)
  last_workspace=$(echo "$workspaces" | tail -1)
  
  if [ -n "$last_workspace" ]; then
    sketchybar --move front_app after "$last_workspace"
  fi
fi
