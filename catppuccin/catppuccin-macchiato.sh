#!/usr/bin/env zsh

# Catppuccin Macchiato Color Palette
# Source: https://github.com/catppuccin/catppuccin

# Base colors (backgrounds)
export CAT_BASE="0xff24273a"        # #24273a - Default background
export CAT_MANTLE="0xff1e2030"      # #1e2030 - Darker background
export CAT_CRUST="0xff181926"       # #181926 - Darkest background

# Surface colors
export CAT_SURFACE0="0xff363a4f"    # #363a4f - Lightest surface
export CAT_SURFACE1="0xff494d64"    # #494d64 - Lighter surface  
export CAT_SURFACE2="0xff5b6078"    # #5b6078 - Light surface

# Overlay colors
export CAT_OVERLAY0="0xff6e738d"    # #6e738d - Darkest overlay
export CAT_OVERLAY1="0xff8087a2"    # #8087a2 - Darker overlay
export CAT_OVERLAY2="0xff939ab7"    # #939ab7 - Dark overlay

# Text colors
export CAT_TEXT="0xffcad3f5"        # #cad3f5 - Default text
export CAT_SUBTEXT1="0xffb8c0e0"    # #b8c0e0 - Muted text
export CAT_SUBTEXT0="0xffa5adcb"    # #a5adcb - More muted text

# Main accent colors
export CAT_ROSEWATER="0xfff4dbd6"   # #f4dbd6
export CAT_FLAMINGO="0xfff0c6c6"    # #f0c6c6
export CAT_PINK="0xfff5bde6"        # #f5bde6
export CAT_MAUVE="0xffc6a0f6"       # #c6a0f6
export CAT_RED="0xffed8796"         # #ed8796
export CAT_MAROON="0xffee99a0"      # #ee99a0
export CAT_PEACH="0xfff5a97f"       # #f5a97f
export CAT_YELLOW="0xffeed49f"      # #eed49f
export CAT_GREEN="0xffa6da95"       # #a6da95
export CAT_TEAL="0xff8bd5ca"        # #8bd5ca
export CAT_SKY="0xff91d7e3"         # #91d7e3
export CAT_SAPPHIRE="0xff7dc4e4"    # #7dc4e4
export CAT_BLUE="0xff8aadf4"        # #8aadf4
export CAT_LAVENDER="0xffb7bdf8"    # #b7bdf8

# Transparency variants (66 = 40% opacity for backgrounds)
export CAT_BASE_TRANSPARENT="0x6624273a"
export CAT_SURFACE0_TRANSPARENT="0x66363a4f"
export CAT_SURFACE1_TRANSPARENT="0x66494d64"
export CAT_SURFACE2_TRANSPARENT="0x665b6078"

# High transparency variants (33 = 20% opacity)
export CAT_BASE_HIGH_TRANSPARENT="0x3324273a"
export CAT_SURFACE0_HIGH_TRANSPARENT="0x33363a4f"

# Common UI element combinations
export CAT_ACCENT="$CAT_MAUVE"              # Primary accent color
export CAT_ACCENT_ALT="$CAT_BLUE"           # Alternative accent
export CAT_SUCCESS="$CAT_GREEN"             # Success states
export CAT_WARNING="$CAT_YELLOW"            # Warning states
export CAT_ERROR="$CAT_RED"                 # Error states
export CAT_INFO="$CAT_SKY"                  # Information states
