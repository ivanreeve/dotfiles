#!/bin/sh

# TODO: some configs are still missing

show_log(){
    echo -e "[LOG] Synced $1"
}

# Sync .zshrc
rm -f ../.zshrc
cp -f ~/.zshrc ../
show_log ".zshrc"

# Sync .zsh_aliases
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
