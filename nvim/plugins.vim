"-------------------------------- Plugins ------------------------------------
"
" Vim-Plug
" PluInstall
" PlugStatus


"Plug
call plug#begin('~/.config/nvim/plugged')
  Plug 'ctrlpvim/ctrlp.vim'        " Fuzzy file, buffer, mru, tag, etc finder
  Plug 'tpope/vim-commentary'      " Comment stuff out
  Plug 'tpope/vim-rails'           " Ruby on Rails power tools
  Plug 'tpope/vim-commentary'      " Comment stuff out
  Plug 'airblade/vim-gitgutter'    " Git gutter

  " Airline
  Plug 'vim-airline/vim-airline'   " Status / Tabline
  Plug 'vim-airline/vim-airline-themes'

  " Vim-Snipmate and dependencies
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'

  " Themes
  Plug 'crusoexia/vim-monokai'
call plug#end()


" ctrp.vim -- https://github.com/ctrlpvim/ctrlp.vim
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0


" airline
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme='kolor'
