#!/bin/bash

CONFIG_DIR="$HOME/.config/sketchybar"

# Update all workspace icons
update_all_spaces() {
    all_workspaces=$(aerospace list-workspaces --all 2>/dev/null | sort -u)
    
    for sid in $all_workspaces; do
        apps=$(aerospace list-windows --workspace "$sid" 2>/dev/null | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')
        
        if [ "${apps}" != "" ]; then
            icon_strip=" "
            while read -r app; do
                icon_strip+=" $($CONFIG_DIR/plugins/icon_map_fn.sh "$app")"
            done <<<"${apps}"
        else
            icon_strip=""
        fi
        
        sketchybar --set space.$sid label="$icon_strip"
    done
}

# Update workspace icons
update_all_spaces
