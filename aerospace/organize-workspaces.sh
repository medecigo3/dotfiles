#!/bin/bash

# Aerospace Workspace Organizer
# This script moves all open windows to their assigned workspaces
# Based on the rules defined in aerospace.toml

# Function to get target workspace for an app bundle ID
get_workspace_for_app() {
    local app_bundle_id="$1"
    local bundle_lower=$(echo "$app_bundle_id" | tr '[:upper:]' '[:lower:]')
    
    case "$bundle_lower" in
        "com.apple.finder")
            echo "1"    # Finder -> workspace 1 (matching aerospace.toml)
            return 0
            ;;
        "org.keepassxc.keepassxc")
            echo "2"    # Keepass -> workspace 2 (matching aerospace.toml)
            return 0
            ;;
        "dev.warp.warp-stable")
            echo "3"    # Warp -> workspace 3 (matching aerospace.toml)
            return 0
            ;;
        "notion.id")
            echo "4"    # Notion -> workspace 4 (matching aerospace.toml)
            return 0
            ;;
        "md.obsidian")
            echo "4"    # Obsidian -> workspace 4 (matching aerospace.toml)
            return 0
            ;;
        "com.parallels.desktop.console")
            echo "5"    # Parallels Desktop -> workspace 5 (matching aerospace.toml)
            return 0
            ;;
        "com.adobe.premierepro.24")
            echo "6"    # AdobePremierePro.24-> workspace 6 (matching aerospace.toml)
            return 0
            ;;
        "com.jetbrains.intellij")
            echo "7"    # IntelliJ-> workspace 7 (matching aerospace.toml)
            return 0
            ;;
        "com.google.chrome")
            echo "6"    # Google Chrome -> workspace 6 (matching aerospace.toml)
            return 0
            ;;
        "com.apple.terminal")
            echo "3"    # Terminal -> workspace 3 (matching aerospace.toml)
            return 0
            ;;
        *)
            return 1
            ;;
    esac
}

# Function to move a window to its assigned workspace
move_window_to_workspace() {
    local window_id="$1"
    local app_bundle_id="$2"
    local app_name="$3"
    
    # Get target workspace for this app
    local target_workspace=$(get_workspace_for_app "$app_bundle_id")
    
    if [ -n "$target_workspace" ]; then
        echo "Moving $app_name (ID: $window_id) to workspace $target_workspace"
        # Capture both stdout and stderr
        local result
        result=$(aerospace move-node-to-workspace --window-id "$window_id" "$target_workspace" 2>&1)
        local exit_code=$?
        if [ $exit_code -ne 0 ]; then
            echo "  Error moving window: $result"
            return 1
        fi
        return 0
    else
        echo "No workspace assignment for $app_name (Bundle: $app_bundle_id)"
        return 1
    fi
}

# Main execution
main() {
    echo "=== Aerospace Workspace Organizer ==="
    echo "Organizing windows to their assigned workspaces..."
    echo ""
    
    local moved_count=0
    local skipped_count=0
    local error_count=0
    
    # First, get all windows into a temporary file to avoid subprocess issues
    local temp_file=$(mktemp)
    aerospace list-windows --all --format "%{window-id}|%{app-bundle-id}|%{app-name}|%{workspace}" > "$temp_file"
    
    # Process each window (use fd 3 to avoid stdin issues)
    exec 3< "$temp_file"
    while IFS='|' read -r window_id app_bundle_id app_name workspace_id <&3; do
        # Trim whitespace
        window_id=$(echo "$window_id" | xargs)
        app_bundle_id=$(echo "$app_bundle_id" | xargs)
        app_name=$(echo "$app_name" | xargs)
        workspace_id=$(echo "$workspace_id" | xargs)
        
        # Debug output (uncomment for troubleshooting)
        # echo "Processing: ID=$window_id, Bundle=$app_bundle_id, Name=$app_name, Current workspace=$workspace_id"
        
        # Skip if no window ID
        if [[ -z "$window_id" ]]; then
            continue
        fi
        
        # Try to move the window
        if move_window_to_workspace "$window_id" "$app_bundle_id" "$app_name"; then
            ((moved_count++))
        else
            ((skipped_count++))
        fi
        
    done
    exec 3<&-  # Close file descriptor 3
    
    # Clean up temp file
    rm -f "$temp_file"
    
    echo ""
    echo "=== Summary ==="
    echo "Windows moved: $moved_count"
    echo "Windows skipped (no assignment): $skipped_count"
    
    # Update workspace icons if the script exists
    if [[ -x "$HOME/.config/sketchybar/plugins/update_workspace_icons.sh" ]]; then
        echo "Updating workspace icons..."
        "$HOME/.config/sketchybar/plugins/update_workspace_icons.sh"
    fi
    
    # Trigger aerospace workspace change event for sketchybar
    if command -v sketchybar &> /dev/null; then
        focused_workspace=$(aerospace list-workspaces --focused 2>/dev/null || echo "1")
        sketchybar --trigger aerospace_workspace_change FOCUSED_WORKSPACE="$focused_workspace"
    fi
    
    echo "Done!"
}

# Run the script
main "$@"
