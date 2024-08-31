#!/bin/bash

# Requires git
# Run this script as superuser

pkglist=(
    "man-db"
    "wayland"
    "xdg-desktop-portal"
    "xdg-desktop-portal-wlr"
    "wl-clipboard"
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

function pkginstall(){
    for pkg in "${pkglist[@]}"; do
        pacman -S $pkg
    done
}

function fontinstall(){
    local repo="https://github.com/ivanreeve/fonts.git"
    git clone $repo $HOME/.local/share/fonts/
    fc-cache fv
}

# TODO: remove restore script, create a callback instead

# pkginstall
# fontinstall
