# ~/.bashrc
# After making changes, reload bash by typing: bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load binaries by adding path /home/ivanr/.local/bin to $PATH.
# These directories are not added by default
export PATH=$PATH:/home/ivanr/.local/bin
export PATH=$PATH:/usr/local/go/bin

# Initialize oh-my-posh
eval "$(oh-my-posh --init --shell bash --config /home/ivanr/.cache/oh-my-posh/themes/current.omp.json)"

# User Prompt
# WARNING: Scripts put beyond this line COULD prevent the terminal from loading
PS1='[\u@\h \W]\$ '
