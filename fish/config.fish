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

# fisher
# https://github.com/jorgebucaran/fisher
if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

# simple aliases
alias ll='ls -alF'
alias la='ls -A'
alias lh='ls -lah'
alias l='ls -CF'
alias g=git
alias gg='git grep'
alias vim=nvim
