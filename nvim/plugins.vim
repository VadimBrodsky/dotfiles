"-------------------------------- Plugins ------------------------------------
" Vim-Plug
" PluInstall
" PlugStatus


"Plug
call plug#begin('~/.config/nvim/plugged')
  Plug 'tpope/vim-commentary'      " Comment stuff out
  Plug 'tpope/vim-surround'        " Quoting/parenthesizing made simple
  " Plug 'tpope/vim-rails'           " Ruby on Rails power tools
  Plug 'tpope/vim-fugitive'        " Git wrapper
  Plug 'tpope/vim-commentary'      " Comment stuff out
  Plug 'airblade/vim-gitgutter'    " Git gutter
  Plug 'jiangmiao/auto-pairs'      " Insrt or delete brackets, parens in pairs
  Plug 'junegunn/goyo.vim'         " Distraction-free writing in Vim
  Plug 'w0rp/ale'                  " Asynchronous Lint Engine
  Plug 'sheerun/vim-polyglot'      " Additional languages


  " Dark powered asynchronous completion framework for neovim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " fuzzy finder for vim
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
  Plug 'junegunn/fzf.vim'

  " Additional Languages
  " Plug 'ElmCast/elm-vim'           " Elm

  " Typescript
  " Plug 'leafgarland/typescript-vim'
  " Plug 'Shougo/vimproc.vim'
  " Plug 'Quramy/tsuquyomi'

  " Vim-Snipmate and dependencies
  " Plug 'MarcWeber/vim-addon-mw-utils'
  " Plug 'tomtom/tlib_vim'
  " Plug 'garbas/vim-snipmate'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  " Themes
  Plug 'crusoexia/vim-monokai'
  Plug 'altercation/vim-colors-solarized'
  Plug 'NLKNguyen/papercolor-theme'
call plug#end()


" UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"


" ALE
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'json': ['prettier'],
\   'typescript': ['prettier'],
\   'typescriptreact': ['prettier'],
\   'markdown': ['prettier'],
\   'html': ['prettier'],
\   'yaml': ['prettier'],
\}

let g:ale_fix_on_save = 0
let g:ale_javascript_prettier_options = '--arrow-parens always --print-width 100 --tab-width 2  --single-quote true --trailing-comma all'

" Deoplete settings
let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources = ['file', 'ultisnips']
