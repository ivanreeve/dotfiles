#!/bin/bash

# TODO: some configs are still missing

show_log(){
    echo -e "[LOG] Synced $1"
}

# Sync .bashrc
rm -f ../.bashrc
cp -f ~/.bashrc ../
show_log ".bashrc"

# Sync .bash_aliases
rm -f ../.bash_aliases
cp -f ~/.bash_aliases ../
show_log ".bash_aliases"

# Sync .bash_profile
rm -f ../.bash_profile
cp -f ~/.bash_profile ../
show_log ".bash_profile"

# Sync fastfetch
rm -rf ../.config/fastfetch/
cp -rf ~/.config/fastfetch/ ../.config
show_log "fastfetch"

# Sync oh-my-posh
rm -rf ../.cache/oh-my-posh/themes/
mkdir -p ../.cache/oh-my-posh/themes/
cp -f ~/.cache/oh-my-posh/themes/current.omp.json ../.cache/oh-my-posh/themes/
show_log "oh-my-posh"

# Sync neovim
rm -rf ../.config/nvim/
cp -rf ~/.config/nvim/ ../.config
show_log "nvim"

# Sync hyprland
rm -rf ../.config/hypr/
cp -rf ~/.config/hypr/ ../.config
show_log "hypr"

# Sync kitty
rm -rf ../.config/kitty/
cp -rf ~/.config/kitty/ ../.config
show_log "kitty"

# Sync swappy
rm -rf ../.config/swappy/
cp -rf ~/.config/swappy/ ../.config
show_log "swappy"
