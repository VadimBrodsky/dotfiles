# install fundle
# wget https://git.io/fundle -O ~/.config/fish/functions/fundle.fish
#
# update fundle
# fundle self-update

## Fundle plugins, run fundle install to install them
fundle plugin 'edc/bass'
fundle init

set -U EDITOR nvim
alias vim=nvim
alias g=git
