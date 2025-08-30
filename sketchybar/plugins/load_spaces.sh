# NOT IN USE
# Load Catppuccin colors
source "$HOME/.config/catppuccin/catppuccin-mocha.sh"

for sid in $(aerospace list-workspaces --monitor 1 --empty no); do
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        background.color=$CAT_SURFACE0_TRANSPARENT \
        background.corner_radius=5 \
        background.height=20 \
        background.drawing=off \
        label="$sid" \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done