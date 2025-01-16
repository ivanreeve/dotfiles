


# Sync neovim
rm -rf ../.config/nvim/
mkdir -p ../.config/nvim/
cp -rf ~/.config/nvim/* ../.config/nvim
mkdir -p ../.config/nvim/lua/plugins/alpha-themes/
cp -rf ~/.local/share/nvim/lazy/alpha-nvim/lua/alpha/themes/* ../.config/nvim/lua/plugins/alpha-themes/
show_log "neovim"
