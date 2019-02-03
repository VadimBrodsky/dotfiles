# editor
set -xg EDITOR nvim

# simple aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias g=git
alias gs='git status'
alias vim=nvim

# asdf
if test -e ~/.asdf/asdf.fish
  source ~/.asdf/asdf.fish
end

if test -e ~/.config/fish/fish_local.fish
  . ~/.config/fish/fish_local.fish
end
