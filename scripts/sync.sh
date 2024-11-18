#!/bin/bash

# TODO: some configs are still missing

show_log(){
    echo -e "[LOG] Synced $1"
}

# Sync .bashrc
rm -f ../.zshrc
cp -f ~/.zshrc ../
show_log ".zshrc"

# Sync .bash_aliases
rm -f ../.zsh_aliases
cp -f ~/.zsh_aliases ../
show_log ".zsh_aliases"

# Sync .tmux.conf
rm -f ../.tmux.conf
cp -f ~/.tmux.conf ../
show_log ".tmux.conf"

# Sync oh-my-posh
rm -rf ../.cache/oh-my-posh/themes/
mkdir -p ../.cache/oh-my-posh/themes/
cp -f ~/.cache/oh-my-posh/themes/current.omp.json ../.cache/oh-my-posh/themes/
show_log "oh-my-posh"

# Sync neovim
rm -rf ../.config/nvim/
mkdir -p ../.config/nvim/
cp -rf ~/.config/nvim/* ../.config/nvim
mkdir -p ../.config/nvim/lua/plugins/alpha-themes/
cp -rf ~/.local/share/nvim/lazy/alpha-nvim/lua/alpha/themes/* ../.config/nvim/lua/plugins/alpha-themes/
show_log "neovim"

# Sync kitty
rm -rf ../.config/kitty/
cp -rf ~/.config/kitty/ ../.config
show_log "kitty"
