" Vadim's Neovim Configuration
"
" ~/.config/nvim/init.vim  - most settings go here
" ~/.config/nvim - plugins, language specific options, color schemes
"
" :set list - turn boolean value on
" :set nolist - turn boolean value off
" :set list? - show current value
" :set list& - reset to default value
"
" :h list - to get help
"
" :verbose set list?  # to find where a value was set
" :options # to see all options
" :set # all options that are not default
"
" open the vimrc file :e $MYVIMRC
" manually reload vimrc
" :source $MYVIMRC
"
" browser all vim configuration options
" :browse set<cr>

source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/abbr.vim
source $HOME/.config/nvim/visual.vim
source $HOME/.config/nvim/keys.vim
