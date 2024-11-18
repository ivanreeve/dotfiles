# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

# Load Aliases
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# LOAD PLUGINS
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use vi keybindings
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

setopt HIST_IGNORE_ALL_DUPS HIST_FIND_NO_DUPS INC_APPEND_HISTORY

alias nvim=~/.local/bin/./nvim.appimage

export PATH=$PATH:/home/ivanreeve/.local/bin

eval "$(oh-my-posh --init --shell zsh --config /home/ivanreeve/.cache/oh-my-posh/themes/current.omp.json)"
