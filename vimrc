" Vadim's Vimrc
"
" ~/.vimrc  - most settings go here, shared terminal and graphic options
" ~/.gvimrc - graphic only settings (font, window size)
" ~/.vim/   - plugins, language specific options, color schemes
"
" Symlink vimrc file from the vim directory
" ln -nfs ~/git/dotfiles_vb/vim ~/.vim
" ln -nfs ~/git/dotfiles_vb/vimrc ~/.vimrc
" ln -nfs ~/git/dotfiles_vb/gvimrc ~/.gvimrc
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
" To add graphical option to main vimrc instead of gvimrc
" if has('gui_running')
"   set guifont=Lucida_Console:h11
" endif
"
" open the vimrc file :e $MYVIMRC
" manually reload vimrc
" :source $MYVIMRC
"
" browser all vim configuration options
" :browse set<cr>


" Settings:

" Global:
set nocompatible                " Vi improved
set title                       " Set the terminal's title
set visualbell                  " No beeping
"set lazydraw                    " Don't update white executing macros


" Space is my leader
let mapleader = "\<Space>"


" Swap files
set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.


" Syntax
syntax on                       " Turn syntax highlighting on
filetype plugin indent on       " Turn on file type detection for indentation


" Line Numbers etc
set number                      " Show line numbers
set ruler                       " Show cursor position
set cursorline                  " Highlight current line
set colorcolumn=80              " Vertical ruler for preferred line width


" list chars
set list                        " Show invisible characters
set listchars=""                " Reset the listchars
set listchars=tab:\ \           " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.          " show trailing spaces as dots
set listchars+=extends:>        " The character to show in the last column when wrap is
                                " off and the line continues beyond the right of the screen
set listchars+=precedes:<       " The character to show in the last column when wrap is
                                " off and the line continues beyond the left of the screen

"set textwidth=79
"set wrapmargin=2
" set list                      " show tabs and end of line characters


" Status Line
set showcmd                     " Display incomplete commands
set showmode                    " Display the mode you're in
set laststatus=2                " Show the status line all the time

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P


" Command Line Mode
set wildmenu                    " Enhanced command line completion
set wildmode=list:longest       " Complete files like a shell
set ignorecase                  " Case-insensitive searching
set smartcase                   " But case-sensitive if expression contains a capital letter


" Search
set incsearch                   " Highlight matches as you type
set hlsearch                    " Highlight matches


" Editing
set backspace=indent,eol,start  " Intuitive backspacing
set history=1000                " Remember last 1000 commands
set wrap                        " Turn on line wrapping
set scrolloff=4                 " Show 4 lines of context around the cursor
:setlocal spell spelllang=en_us " Spell check for English


" number of visual spacer per TAB
set tabstop=2                   " Global tab width.
set shiftwidth=2                " And again, related
set softtabstop=2               " Soft tab stops sts
set expandtab                   " Use spaces instead of tabs


" Buffers
set hidden                      " Allow buffer change w/o saving


" Key Mappings
" normal mode mappings

  " replace 0 with ^
  nmap 0 ^

  " Move up and down by visible lines if the current line is wrapper
  nmap j gj
  nmap k gk

  " Map Ctrl-s to write the file
  nmap <C-s> :w<cr>

  " Split edit your vimrc, space, v, r
  nmap <leader>vr :sp $MYVIMRC<cr>

  " Edit your vimrc in a new tab
  nmap <leader>vi :tabedit ~/.vimrc<cr>

  " Source (reload) your vimrc. space, s, o
  nmap <leader>so :source $MYVIMRC<cr>

  " Pre-populate a split command with the current directory
  nmap <leader>v :vnew <C-r>=escape(expand("

  " Copy the entire buffer into the system register
  nmap <leader>co ggVG*y


" insert mode mappings
  imap jk <esc>
  imap kj <esc>


" auto commands
  " :h autocmd-events
  " when a help file is open remap the q key to :q<cr>
  autocmd Filetype help nnoremap <buffer> q :q<cr>


" Command aliases
  command! Q q         " Bind :Q to :q
  command! Qall qall
  command! QA qall
  command! E e


" Tab mappings
"map <leader>tt :tabnew<cr>
"map <leader>te :tabedit
"map <leader>tc :tabclose<cr>
"map <leader>to :tabonly<cr>
"map <leader>tn :tabnext<cr>
"map <leader>tp :tabprevious<cr>
"map <leader>tf :tabfirst<cr>
"map <leader>tl :tablast<cr>
"map <leader>tm :tabmove
"
" Autocomete with tab
"imap <Tab> <C-N>


" Abbreviations
ab teh the


" Plugins
"
" Vim-Plug
" PluInstall
" PlugStatus
call plug#begin('~/.vim/plugged')
  Plug 'ctrlpvim/ctrlp.vim'        " Fuzzy file searcher
  Plug 'tpope/vim-surround'        " Surround motions
  Plug 'tpope/vim-repeat'          " Improved repeat motion with .
  Plug 'tpope/vim-rails'           " Support for Rails projects
all plug#end()
"
"
" ctrp.vim -- https://github.com/ctrlpvim/ctrlp.vim
" let g:ctrlp_map = '<c-p>'     " Remap C-p to ctrlp.vim
" let g:ctrlp_cmd = 'CtrlP'     " Remap C-p to ctrlp.vim

" Ignore files in CtrlP
" set wildignore+=*.zip,*.swp,*.so,*.ico,*.git      " ignore filetypes
" set wildignore+=*/node_modules/*                  " ignore node
" set wildignore+=*/bower_components/*              " ignore bower
" set wildignore+=*/craft/app/*,*/craft/storage/*   " ignore craft

" let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|bower_components|craft/app)|(\.(swp|ico|git|svn))$'
