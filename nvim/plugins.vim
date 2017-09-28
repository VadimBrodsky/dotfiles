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
  Plug 'jiangmiao/auto-pairs'      " Insert or delete brackets, parens in pairs
  Plug 'mtth/scratch.vim'          " Scratch buttfer
  Plug 'lifepillar/vim-cheat40'    " Vim Cheatsheet
  Plug 'vimwiki/vimwiki'           " Personal Vim Wiki
  Plug 'w0rp/ale'                  " Asynchronous Lint Engine

  " Plug 'scrooloose/syntastic'      " Syntax checking for vim
  " Plug 'Shougo/unite.vim'          " vimfiler dependency
  " Plug 'Shougo/vimfiler.vim'       " File explorer

  " Dark powered asynchronous completion framework for neovim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " Additional Languages
  Plug 'sheerun/vim-polyglot'      " Additional languages
  Plug 'nikvdp/ejs-syntax'         " Ejs syntax

  " Typescript
  Plug 'leafgarland/typescript-vim'
  Plug 'Shougo/vimproc.vim'
  Plug 'Quramy/tsuquyomi'

  " Airline
  " Plug 'vim-airline/vim-airline'   " Status / Tabline
  " Plug 'vim-airline/vim-airline-themes'

  " Vim-Snipmate and dependencies
  " Plug 'MarcWeber/vim-addon-mw-utils'
  " Plug 'tomtom/tlib_vim'
  " Plug 'garbas/vim-snipmate'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  " Themes
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-colorscheme-switcher'
  Plug 'flazz/vim-colorschemes'
  Plug 'crusoexia/vim-monokai'
  Plug 'jdkanani/vim-material-theme'
  Plug 'dracula/vim'
call plug#end()


" ctrp.vim -- https://github.com/ctrlpvim/ctrlp.vim
let g:ctrlp_user_command = 'rg --files %s'
let g:ctrlp_use_caching = 0


" UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" Airline
" let g:airline#extensions#tabline#enabled = 2
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#right_sep = ' '
" let g:airline#extensions#tabline#right_alt_sep = '|'
" let g:airline_left_sep = ' '
" let g:airline_left_alt_sep = '|'
" let g:airline_right_sep = ' '
" let g:airline_right_alt_sep = '|'
" let g:airline_theme='kolor'
" let g:airline#extensions#tagbar#enabled = 1
" let g:airline#extensions#ale#enabled = 1


" Syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" Use ESlint
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exec = '$HOME/.nvm/versions/node/v6.9.1/bin/eslint'

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" ALE
let g:ale_lint_on_text_changed = 'normal'
let g:ale_linters = {
\ 'typescript': ['tslint'],
\}

" Deoplete settings
let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources = ['file', 'ultisnips']


" Vimfiler
" let g:vimfiler_as_default_explorer = 1
