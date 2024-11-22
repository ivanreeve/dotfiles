# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

# LOAD PLUGINS
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Additional executable paths
export PATH=$PATH:/home/ivanreeve/.local/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

# Load Aliases
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# Load Custom ENV variables: make sure .env file exists in the home dir
if [ -f ~/.env ]; then
    . ~/.env
fi

# Use vi keybindings
bindkey -v

setopt HIST_IGNORE_ALL_DUPS HIST_FIND_NO_DUPS INC_APPEND_HISTORY

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

eval "$(oh-my-posh --init --shell zsh --config /home/ivanreeve/.cache/oh-my-posh/themes/current.omp.json)"
