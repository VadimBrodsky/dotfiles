# install fundle
# wget https://git.io/fundle -O ~/.config/fish/functions/fundle.fish
#
# update fundle
# fundle self-update

## Fundle plugins, run fundle install to install them
# fundle plugin 'edc/bass'
# fundle init

# ruby
set PATH /usr/local/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# node
# https://github.com/brigand/fast-nvm-fish
set -U fish_user_paths
nvm use 10.15.0

# python 2 for mac
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# rust
export PATH="/Users/vbrodsky/.cargo/bin:$PATH"

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
