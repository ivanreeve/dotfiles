#!/bin/sh

show_log(){
    echo -e "[LOG] Applied $1 configurations"
}

# Sync neovim
rm -rf ~/.config/nvim/
mkdir -p ~/.config/nvim/
cp -rf ../.config/nvim/* ~/.config/nvim
cp -rf ~/.local/share/nvim/lazy/alpha-nvim/lua/alpha/themes/* ../.config/nvim/lua/plugins/alpha-themes/
cp -rf ../.config/nvim/lua/plugins/alpha-themes/* ~/.local/share/nvim/lazy/alpha-nvim/lua/alpha/themes/
show_log "neovim"
