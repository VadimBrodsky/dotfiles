"-------------------------------- Plugins ------------------------------------
"
" Vim-Plug
" PluInstall
" PlugStatus


"Plug
call plug#begin('~/.config/nvim/plugged')
  Plug 'ctrlpvim/ctrlp.vim'        " Fuzzy file, buffer, mru, tag, etc finder
  Plug 'tpope/vim-commentary'      " Comment stuff out
  Plug 'tpope/vim-surround'        " Quoting/parenthesizing made simple
  Plug 'tpope/vim-rails'           " Ruby on Rails power tools
  Plug 'tpope/vim-commentary'      " Comment stuff out
  Plug 'airblade/vim-gitgutter'    " Git gutter
  Plug 'scrooloose/syntastic'      " Syntax checking for vim

  " Dark powered asynchronous completion framework for neovim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " Additional Languages
  Plug 'ElmCast/elm-vim'           " Elm

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


" Airline
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
let g:airline#extensions#tagbar#enabled = 1

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab


" Syntastic settings
" set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0


" Deoplete settings
let g:deoplete#enable_at_startup = 1

