# Syncs the system configuration to the dotfiles

bdot()
{
    cp ~/.bashrc ~/Desktop/projects/github/dotfiles
    cp ~/.bash_aliases ~/Desktop/projects/github/dotfiles
    cp ~/.config/neofetch/* ~/Desktop/projects/github/dotfiles/neofetch
    cp ~/.config/nvim/init.lua ~/Desktop/projects/github/dotfiles/nvim
    cp ~/.cache/oh-my-posh/themes/current.omp.json ~/Desktop/projects/github/dotfiles/oh-my-posh/themes

    echo Configs have been copied to dotfiles
    echo NOTE: fonts, screenshots and wallpapers have to be manually copied. Files that are no longer updated should be stored in numbered folder
}
