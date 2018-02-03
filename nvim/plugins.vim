"-------------------------------- Plugins ------------------------------------
" Vim-Plug
" PluInstall
" PlugStatus


"Plug
call plug#begin('~/.config/nvim/plugged')
  Plug 'ctrlpvim/ctrlp.vim'        " Fuzzy file, buffer, mru, tag, etc finder
  Plug 'tpope/vim-commentary'      " Comment stuff out
  Plug 'tpope/vim-surround'        " Quoting/parenthesizing made simple
  Plug 'tpope/vim-rails'           " Ruby on Rails power tools
  Plug 'tpope/vim-fugitive'        " Git wrapper
  Plug 'tpope/vim-commentary'      " Comment stuff out
  Plug 'airblade/vim-gitgutter'    " Git gutter
  " Plug 'scrooloose/syntastic'      " Syntax checking for vim
  Plug 'jiangmiao/auto-pairs'      " Insrt or delete brackets, parens in pairs
  Plug 'vimwiki/vimwiki'           " Personal Wiki for Vim
  Plug 'w0rp/ale'

  " Dark powered asynchronous completion framework for neovim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " Additional Languages
  Plug 'sheerun/vim-polyglot'      " Additional languages
  Plug 'ElmCast/elm-vim'           " Elm

  " Typescript
  Plug 'leafgarland/typescript-vim'
  Plug 'Shougo/vimproc.vim'
  Plug 'Quramy/tsuquyomi'

  " Airline
  Plug 'vim-airline/vim-airline'   " Status / Tabline
  Plug 'vim-airline/vim-airline-themes'

  " Vim-Snipmate and dependencies
  " Plug 'MarcWeber/vim-addon-mw-utils'
  " Plug 'tomtom/tlib_vim'
  " Plug 'garbas/vim-snipmate'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  " Themes
  Plug 'crusoexia/vim-monokai'
  Plug 'dracula/vim'
call plug#end()


" ctrp.vim -- https://github.com/ctrlpvim/ctrlp.vim
" let g:ctrlp_user_command = 'rg --files %s'
let g:ctrlp_use_caching = 0


" vimwiki -- https://github.com/vimwiki/vimwiki
let g:vimwiki_list = [{'path': '~/code/wiki/',
                     \ 'index': 'Home',
                     \ 'syntax': 'markdown', 'ext': '.md'}]


" UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

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


" Syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0


" Deoplete settings
let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources = ['file', 'ultisnips']

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_javascript_prettier_use_local_config = 1

