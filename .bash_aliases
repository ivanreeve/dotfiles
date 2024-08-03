# Syncs the system configuration to the dotfiles
# Restart terminal to take effect
function bdot()
{
    mkdir -p ~/Desktop/projects/github/dotfiles/ && cp ~/.bashrc ~/Desktop/projects/github/dotfiles/
    mkdir -p ~/Desktop/projects/github/dotfiles/ && cp ~/.bash_aliases ~/Desktop/projects/github/dotfiles/
    mkdir -p ~/Desktop/projects/github/dotfiles/neofetch/ && cp ~/.config/neofetch/* ~/Desktop/projects/github/dotfiles/neofetch/
    mkdir -p ~/Desktop/projects/github/dotfiles/nvim/ && cp ~/.config/nvim/init.lua ~/Desktop/projects/github/dotfiles/nvim/
    mkdir -p ~/Desktop/projects/github/dotfiles/oh-my-posh/themes/ && cp ~/.cache/oh-my-posh/themes/current.omp.json ~/Desktop/projects/github/dotfiles/oh-my-posh/themes/
    mkdir -p ~/Desktop/projects/github/dotfiles/ && cp ~/.config/chromium/Default/Bookmarks ~/Desktop/projects/github/dotfiles/
    mkdir -p ~/Desktop/projects/github/dotfiles/alpha-themes/ && cp ~/.local/share/nvim/plugins/alpha-nvim/lua/alpha/themes/theta_custom.lua ~/Desktop/projects/github/dotfiles/alpha-themes/

    # output msg
    echo Config files have been copied to dotfiles
    echo NOTE: fonts, screenshots and wallpapers have to be manually copied.
}
