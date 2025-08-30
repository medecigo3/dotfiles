#!/usr/bin/env zsh

# Catppuccin Frappé Color Palette
# Source: https://github.com/catppuccin/catppuccin

# Base colors (backgrounds)
export CAT_BASE="0xff303446"        # #303446 - Default background
export CAT_MANTLE="0xff292c3c"      # #292c3c - Darker background
export CAT_CRUST="0xff232634"       # #232634 - Darkest background

# Surface colors
export CAT_SURFACE0="0xff414559"    # #414559 - Lightest surface
export CAT_SURFACE1="0xff51576d"    # #51576d - Lighter surface  
export CAT_SURFACE2="0xff626880"    # #626880 - Light surface

# Overlay colors
export CAT_OVERLAY0="0xff737994"    # #737994 - Darkest overlay
export CAT_OVERLAY1="0xff838ba7"    # #838ba7 - Darker overlay
export CAT_OVERLAY2="0xff949cbb"    # #949cbb - Dark overlay

# Text colors
export CAT_TEXT="0xffc6d0f5"        # #c6d0f5 - Default text
export CAT_SUBTEXT1="0xffb5bfe2"    # #b5bfe2 - Muted text
export CAT_SUBTEXT0="0xffa5adce"    # #a5adce - More muted text

# Main accent colors
export CAT_ROSEWATER="0xfff2d5cf"   # #f2d5cf
export CAT_FLAMINGO="0xffeebebe"    # #eebebe
export CAT_PINK="0xfff4b8e4"        # #f4b8e4
export CAT_MAUVE="0xffca9ee6"       # #ca9ee6
export CAT_RED="0xffe78284"         # #e78284
export CAT_MAROON="0xffea999c"      # #ea999c
export CAT_PEACH="0xffef9f76"       # #ef9f76
export CAT_YELLOW="0xffe5c890"      # #e5c890
export CAT_GREEN="0xffa6d189"       # #a6d189
export CAT_TEAL="0xff81c8be"        # #81c8be
export CAT_SKY="0xff99d1db"         # #99d1db
export CAT_SAPPHIRE="0xff85c1dc"    # #85c1dc
export CAT_BLUE="0xff8caaee"        # #8caaee
export CAT_LAVENDER="0xffbabbf1"    # #babbf1

# Transparency variants (66 = 40% opacity for backgrounds)
export CAT_BASE_TRANSPARENT="0x66303446"
export CAT_SURFACE0_TRANSPARENT="0x66414559"
export CAT_SURFACE1_TRANSPARENT="0x6651576d"
export CAT_SURFACE2_TRANSPARENT="0x66626880"

# High transparency variants (33 = 20% opacity)
export CAT_BASE_HIGH_TRANSPARENT="0x33303446"
export CAT_SURFACE0_HIGH_TRANSPARENT="0x33414559"

# Common UI element combinations
export CAT_ACCENT="$CAT_MAUVE"              # Primary accent color
export CAT_ACCENT_ALT="$CAT_BLUE"           # Alternative accent
export CAT_SUCCESS="$CAT_GREEN"             # Success states
export CAT_WARNING="$CAT_YELLOW"            # Warning states
export CAT_ERROR="$CAT_RED"                 # Error states
export CAT_INFO="$CAT_SKY"                  # Information states
