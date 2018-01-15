# install fundle
# wget https://git.io/fundle -O ~/.config/fish/functions/fundle.fish
#
# update fundle
# fundle self-update

## Fundle plugins, run fundle install to install them
# fundle plugin 'edc/bass'
# fundle init

# node
# https://github.com/brigand/fast-nvm-fish
set -U fish_user_paths
nvm use 8.9.1

# yarn
set -xg PATH usr/local/bin/yarn $PATH 

# editor
set EDITOR nvim

# simple aliases
alias ll='ls -alF'
alias la='ls -A'
alias lh='ls -lah'
alias l='ls -CF'
alias g=git
alias vim=nvim
