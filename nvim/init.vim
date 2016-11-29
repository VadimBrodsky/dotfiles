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


"------------------------------- Settings ------------------------------------

" Global
set visualbell                             " No beeping
set backupdir^=~/.config/nvim/_backup//    " where to put backup files.
set directory^=~/.config/nvim/_temp//      " where to put swap files.


" Syntax
syntax on                       " Turn syntax highlighting on
filetype plugin indent on       " Turn on file type detection for indentation
set showmatch                   " Show matching brackets.

set esckeys                     " Cursor keys in insert mode.
set linespace=20                " Set line-spacing to minimum
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)



" Line Numbers
"set number                      " Show line numbers
" set relativenumber               " Set relative numbers

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

set ruler                       " Show cursor position
set cursorline                  " Highlight current line
set colorcolumn=0               " Vertical ruler for preferred line width
" set textwidth=0                 " Hard-wrap long lines as you type them.


" Status Line
set laststatus=2                " Show the status line all the time
set showcmd                     " Display incomplete commands
set showmode                    " Display the mode you're in
" set modeline                    " Show the mode line

" Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P



" list chars
" set list                        " Show invisible characters
" set listchars=""                " Reset the listchars
" set listchars=tab:\ \           " a tab should display as "  ", trailing whitespace as "."
" set listchars+=trail:.          " show trailing spaces as dots
" set listchars+=extends:>        " The character to show in the last column when wrap is
"                                 " off and the line continues beyond the right of the screen
" set listchars+=precedes:<       " The character to show in the last column when wrap is
"                                 " off and the line continues beyond the left of the screen

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.


" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/


" Command Line Mode
set wildmenu                    " Enhanced command line completion
set wildmode=list:longest       " Complete files like a shell


" Search
set incsearch                   " Highlight matches as you type
set hlsearch                    " Highlight matches
set ignorecase                  " Case-insensitive searching
set smartcase                   " But case-sensitive if expression contains a capital letter


" Editing
set backspace=indent,eol,start  " Intuitive backspacing
set history=1000                " Remember last 1000 commands
set wrap                        " Turn on line wrapping
set scrolloff=4                 " Show 4 lines of context around the cursor
setlocal spell spelllang=en_us  " Spell check for English
set complete+=kspell            " Word completion, C-N or C-P


" number of visual spacer per TAB
set tabstop=2                   " Global tab width
set shiftwidth=2                " And again, related
set softtabstop=2               " Soft tab stops
set expandtab                   " Use spaces instead of tabs


" Buffers
set hidden                      " Allow buffer change w/o saving


" Splits
set splitbelow                  " Split down and focus
set splitright                  " Split right and focus



" Load other config files
"------------------------------ Visuals ---------------------------------
source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/abbr.vim
source $HOME/.config/nvim/plugins.vim



"------------------------------ Visuals ---------------------------------
set t_Co=256
" set background=dark

" colorscheme solarized
colorscheme monokai

let &colorcolumn=join(range(81,999),",")
" let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=236 guibg=#ece6d5

" Background from terminal
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE


" Use JavaScript mode for es6 files
autocmd BufNewFile,BufRead *.es6   set syntax=javascript
