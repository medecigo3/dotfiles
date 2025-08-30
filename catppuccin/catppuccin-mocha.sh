#!/usr/bin/env zsh

# Catppuccin Mocha Color Palette
# Source: https://github.com/catppuccin/catppuccin

# Base colors (backgrounds)
export CAT_BASE="0xff1e1e2e"        # #1e1e2e - Default background
export CAT_MANTLE="0xff181825"      # #181825 - Darker background
export CAT_CRUST="0xff11111b"       # #11111b - Darkest background

# Surface colors
export CAT_SURFACE0="0xff313244"    # #313244 - Lightest surface
export CAT_SURFACE1="0xff45475a"    # #45475a - Lighter surface  
export CAT_SURFACE2="0xff585b70"    # #585b70 - Light surface

# Overlay colors
export CAT_OVERLAY0="0xff6c7086"    # #6c7086 - Darkest overlay
export CAT_OVERLAY1="0xff7f849c"    # #7f849c - Darker overlay
export CAT_OVERLAY2="0xff9399b2"    # #9399b2 - Dark overlay

# Text colors
export CAT_TEXT="0xffcdd6f4"        # #cdd6f4 - Default text
export CAT_SUBTEXT1="0xffbac2de"    # #bac2de - Muted text
export CAT_SUBTEXT0="0xffa6adc8"    # #a6adc8 - More muted text

# Main accent colors
export CAT_ROSEWATER="0xfff5e0dc"   # #f5e0dc
export CAT_FLAMINGO="0xfff2cdcd"    # #f2cdcd
export CAT_PINK="0xfff5c2e7"        # #f5c2e7
export CAT_MAUVE="0xffcba6f7"       # #cba6f7
export CAT_RED="0xfff38ba8"         # #f38ba8
export CAT_MAROON="0xffeba0ac"      # #eba0ac
export CAT_PEACH="0xfffab387"       # #fab387
export CAT_YELLOW="0xfff9e2af"      # #f9e2af
export CAT_GREEN="0xffa6e3a1"       # #a6e3a1
export CAT_TEAL="0xff94e2d5"        # #94e2d5
export CAT_SKY="0xff89dceb"         # #89dceb
export CAT_SAPPHIRE="0xff74c7ec"    # #74c7ec
export CAT_BLUE="0xff89b4fa"        # #89b4fa
export CAT_LAVENDER="0xffb4befe"    # #b4befe

# Transparency variants (66 = 40% opacity for backgrounds)
export CAT_BASE_TRANSPARENT="0x661e1e2e"
export CAT_SURFACE0_TRANSPARENT="0x66313244"
export CAT_SURFACE1_TRANSPARENT="0x6645475a"
export CAT_SURFACE2_TRANSPARENT="0x66585b70"

# High transparency variants (33 = 20% opacity)
export CAT_BASE_HIGH_TRANSPARENT="0x331e1e2e"
export CAT_SURFACE0_HIGH_TRANSPARENT="0x33313244"

# Common UI element combinations
export CAT_ACCENT="$CAT_MAUVE"              # Primary accent color
export CAT_ACCENT_ALT="$CAT_BLUE"           # Alternative accent
export CAT_SUCCESS="$CAT_GREEN"             # Success states
export CAT_WARNING="$CAT_YELLOW"            # Warning states
export CAT_ERROR="$CAT_RED"                 # Error states
export CAT_INFO="$CAT_SKY"                  # Information states
