# Configure the bash shell using Shuru defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/shuru/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/shuru/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Shuru defaults
cp ~/.local/share/shuru/configs/inputrc ~/.inputrc