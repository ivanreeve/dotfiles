#!/bin/bash

# Ensure a minimal install with essential packages, such as git
# Run this script as superuser

pkgs=(
    "man-db"
    "wayland"
    "hyprland"
    "hyprpaper"

    "smartmontools"
    "pipewire"
    "pipewire-pulse"
    "unzip"

    "grim"
    "slurp"
    "swappy"

    "kitty"
    "fastfetch"
    
    "neovim"
    "ripgrep"
    "lazygit"

    "chromium"
    "nemo"
    "wofi"

    "gimp"
    "inkscape"
    "krita"
    "obs-studio"
)

# curl -s https://ohmyposh.dev/install.sh

function fontinstall(){
    local repo="https://github.com/ivanreeve/fonts.git"
    git clone $repo $HOME/.local/share/fonts/
}

# TODO: remove restore script, create a callback instead

# pkginstall
# fontinstall
