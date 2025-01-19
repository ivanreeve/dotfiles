#!/bin/sh

# TODO: some configs are still missing

show_log(){
    echo -e "[LOG] Restored $1"
}

# Restore .zshrc
rm -f ~/.zshrc
cp -f ../.zshrc ~/
show_log ".zshrc"

# Restore .zsh_aliases
rm -f ~/.zsh_aliases
cp -f ../.zsh_aliases ~/
show_log ".zsh_aliases"

# Restore .tmux.conf
rm -f ~/.tmux.conf
cp -f ../.tmux.conf ~/
show_log ".tmux.conf"

# Restore kitty
rm -rf ~/.config/kitty/
mkdir -p ~/.config/kitty/
cp -rf ../.config/kitty/* ~/.config/kitty/
show_log "kitty"

# Restore hyprland
rm -rf ~/.config/hypr
mkdir -p ~/.config/hypr/
cp -rf ../.config/hypr/* ~/.config/hypr/
show_log "hypr"

# Restore waybar
rm -rf ~/.config/waybar/
mkdir -p ~/.config/waybar/
cp -rf ../.config/waybar/* ~/.config/waybar/
show_log "waybar"

# Restore wofi
rm -rf ~/.config/wofi/
mkdir -p ~/.config/wofi/
cp -rf ../.config/wofi/* ~/.config/wofi/
show_log "wofi"

# Restore wallpapers
rm -rf ~/Desktop/Wallpapers/
mkdir -p ~/Desktop/Wallpapers/
cp -rf ../Desktop/Wallpapers/* ~/Desktop/Wallpapers/
show_log "wallpapers"

# Restore oh-my-posh
rm -rf ~/.cache/oh-my-posh/themes/
mkdir -p ~/.cache/oh-my-posh/themes/
cp -f ../.cache/oh-my-posh/themes/current.omp.json ~/.cache/oh-my-posh/themes/
show_log "oh-my-posh"
