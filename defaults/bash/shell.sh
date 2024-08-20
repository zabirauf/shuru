# History control
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=32768
HISTFILESIZE="${HISTSIZE}"

# Autocompletion
source /usr/share/bash-completion/bash_completion

# Set complete path
export PATH="./bin:$HOME/.local/bin:$HOME/.local/share/shuru/bin:$PATH"
set +h

export SHURU_PATH="/home/$USER/.local/share/shuru"