"-------------------------------- Plugins ------------------------------------
" Vim-Plug
" PluInstall
" PlugStatus


"Plug
call plug#begin('~/.config/nvim/plugged')
  " Plug 'ctrlpvim/ctrlp.vim'        " Fuzzy file, buffer, mru, tag, etc finder
  Plug 'tpope/vim-commentary'      " Comment stuff out
  Plug 'tpope/vim-surround'        " Quoting/parenthesizing made simple
  " Plug 'tpope/vim-rails'           " Ruby on Rails power tools
  Plug 'tpope/vim-fugitive'        " Git wrapper
  Plug 'airblade/vim-gitgutter'    " Git gutter
  Plug 'jiangmiao/auto-pairs'      " Insert or delete brackets, parens in pairs
  Plug 'vimwiki/vimwiki'           " Personal Vim Wiki
  Plug 'w0rp/ale'                  " Asynchronous Lint Engine
  " Plug 'vim-scripts/YankRing.vim'  " Better yank history

  " Plug 'scrooloose/syntastic'      " Syntax checking for vim
  Plug 'junegunn/goyo.vim'

  " Dark powered asynchronous completion framework for neovim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " Seamless navigation between tmux panes and vim splits
  " Plug 'christoomey/vim-tmux-navigator'

  " fuzzy finder for vim
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " Additional Languages
  Plug 'sheerun/vim-polyglot'      " Additional languages
  Plug 'nikvdp/ejs-syntax'         " Ejs syntax

  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  " Themes
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
  Plug 'altercation/vim-colors-solarized'
  Plug 'crusoexia/vim-monokai'
  Plug 'dracula/vim'
  Plug 'flazz/vim-colorschemes'
  Plug 'jdkanani/vim-material-theme'
  Plug 'rakr/vim-two-firewatch'
  Plug 'arcticicestudio/nord-vim'
  Plug 'whatyouhide/vim-gotham'
  Plug 'christophermca/meta5'
  Plug 'liuchengxu/space-vim-dark'
call plug#end()


" ctrp.vim -- https://github.com/ctrlpvim/ctrlp.vim
" let g:ctrlp_user_command = 'rg --files %s'
" let g:ctrlp_use_caching = 0


" UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-K>"
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

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
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 'normal'
" let g:ale_linters = {}
" let g:ale_linters['typescript'] = ['tsserver', 'typecheck', 'tslint']
" let g:ale_linters['typescript'] = ['tsserver', 'typecheck']

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


" Vimfiler
" let g:vimfiler_as_default_explorer = 1

" Goyo
let g:goyo_width = 120

" FZF
" Command for git grep
" - fzf#vim#grep(command, with_column, [options], [fullscreen])
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)
