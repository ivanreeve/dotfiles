#!/bin/bash

# TODO: some configs are still missing

show_log(){
    echo -e "[LOG] Synced $1 configs"
}

# Sync Fastfetch Configs
rm -rf ../.config/fastfetch
cp -rf ~/.config/fastfetch ../.config
show_log "Fastfetch"

# Sync Neovim Configs
rm -rf ../.config/nvim
cp -rf ~/.config/nvim ../.config
show_log "Neovim"

# Sync Hyprland Configs
rm -rf ../.config/hypr
cp -rf ~/.config/hypr ../.config
show_log "Hyprland"

# Sync Kitty Configs
rm -rf ../.config/kitty
cp -rf ~/.config/kitty ../.config
show_log "Kitty"

# Sync Swappy Configs
rm -rf ../.config/swappy
cp -rf ~/.config/swappy ../.config
show_log "Swappy"
