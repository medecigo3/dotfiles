#!/usr/bin/env zsh

# Catppuccin Latte Color Palette
# Source: https://github.com/catppuccin/catppuccin

# Base colors (backgrounds)
export CAT_BASE="0xffeff1f5"        # #eff1f5 - Default background
export CAT_MANTLE="0xffe6e9ef"      # #e6e9ef - Darker background
export CAT_CRUST="0xffdce0e8"       # #dce0e8 - Darkest background

# Surface colors
export CAT_SURFACE0="0xffccd0da"    # #ccd0da - Lightest surface
export CAT_SURFACE1="0xffbcc0cc"    # #bcc0cc - Lighter surface  
export CAT_SURFACE2="0xffacb0be"    # #acb0be - Light surface

# Overlay colors
export CAT_OVERLAY0="0xff9ca0b0"    # #9ca0b0 - Darkest overlay
export CAT_OVERLAY1="0xff8c8fa1"    # #8c8fa1 - Darker overlay
export CAT_OVERLAY2="0xff7c7f93"    # #7c7f93 - Dark overlay

# Text colors
export CAT_TEXT="0xff4c4f69"        # #4c4f69 - Default text
export CAT_SUBTEXT1="0xff5c5f77"    # #5c5f77 - Muted text
export CAT_SUBTEXT0="0xff6c6f85"    # #6c6f85 - More muted text

# Main accent colors
export CAT_ROSEWATER="0xffdc8a78"   # #dc8a78
export CAT_FLAMINGO="0xffdd7878"    # #dd7878
export CAT_PINK="0xffea76cb"        # #ea76cb
export CAT_MAUVE="0xff8839ef"       # #8839ef
export CAT_RED="0xffd20f39"         # #d20f39
export CAT_MAROON="0xffe64553"      # #e64553
export CAT_PEACH="0xfffe640d"       # #fe640d
export CAT_YELLOW="0xffdf8e1d"      # #df8e1d
export CAT_GREEN="0xff40a02b"       # #40a02b
export CAT_TEAL="0xff179299"        # #179299
export CAT_SKY="0xff04a5e5"         # #04a5e5
export CAT_SAPPHIRE="0xff209fb5"    # #209fb5
export CAT_BLUE="0xff1e66f5"        # #1e66f5
export CAT_LAVENDER="0xff7287fd"    # #7287fd

# Transparency variants (66 = 40% opacity for backgrounds)
export CAT_BASE_TRANSPARENT="0x66eff1f5"
export CAT_SURFACE0_TRANSPARENT="0x66ccd0da"
export CAT_SURFACE1_TRANSPARENT="0x66bcc0cc"
export CAT_SURFACE2_TRANSPARENT="0x66acb0be"

# High transparency variants (33 = 20% opacity)
export CAT_BASE_HIGH_TRANSPARENT="0x33eff1f5"
export CAT_SURFACE0_HIGH_TRANSPARENT="0x33ccd0da"

# Common UI element combinations
export CAT_ACCENT="$CAT_MAUVE"              # Primary accent color
export CAT_ACCENT_ALT="$CAT_BLUE"           # Alternative accent
export CAT_SUCCESS="$CAT_GREEN"             # Success states
export CAT_WARNING="$CAT_YELLOW"            # Warning states
export CAT_ERROR="$CAT_RED"                 # Error states
export CAT_INFO="$CAT_SKY"                  # Information states
