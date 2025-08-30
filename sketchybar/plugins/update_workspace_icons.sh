#!/bin/bash

CONFIG_DIR="$HOME/.config/sketchybar"

update_space_icons() {
    local sid=$1
    local apps=$(aerospace list-windows --workspace "$sid" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')

    sketchybar --set space.$sid drawing=on

    if [ "${apps}" != "" ]; then
        icon_strip=" "
        while read -r app; do
            icon_strip+=" $($CONFIG_DIR/plugins/icon_map_fn.sh "$app")"
        done <<<"${apps}"
    else
        icon_strip=""
    fi
    sketchybar --set space.$sid label="$icon_strip"
}

# Update all workspaces across all monitors to ensure clean state
all_workspaces=$(aerospace list-workspaces --all | sort -u)
for sid in $all_workspaces; do
    update_space_icons "$sid"
done

# Reposition front_app after updating workspaces
workspaces=$(sketchybar --query bar | grep -o 'space\.[0-9]*' | sort -V)
last_workspace=$(echo "$workspaces" | tail -1)

if [ -n "$last_workspace" ]; then
    sketchybar --move front_app after "$last_workspace"
fi
