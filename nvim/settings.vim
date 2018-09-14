"------------------------------- Settings ------------------------------------

" Global
set visualbell                             " No beeping
set backupdir^=~/.config/nvim/_backup//    " where to put backup files.
set directory^=~/.config/nvim/_temp//      " where to put swap files.


" Syntax
syntax on                       " Turn syntax highlighting on
filetype plugin indent on       " Turn on file type detection for indentation
set showmatch                   " Show matching brackets.

set linespace=20                " Set line-spacing to minimum
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)


" Line Numbers
set number                      " Show line numbers
" set relativenumber               " Set relative numbers

set ruler                       " Show cursor position
" set cursorline                  " Highlight current line
set colorcolumn=80              " Vertical ruler for preferred line width
" set textwidth=0                 " Hard-wrap long lines as you type them.


" Status Line
set laststatus=2                " Show the status line all the time
set showcmd                     " Display incomplete commands
set showmode                    " Display the mode you're in
" set modeline                    " Show the mode line

" Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P



" list chars
set list                        " Show invisible characters
set listchars=""                " Reset the listchars
set listchars=tab:\ \           " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.          " show trailing spaces as dots
set listchars+=extends:>        " The character to show in the last column when wrap is
                                " off and the line continues beyond the right of the screen
set listchars+=precedes:<       " The character to show in the last column when wrap is
                                " off and the line continues beyond the left of the screen


" Also highlight all tabs and trailing whitespace characters.
" highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" match ExtraWhitespace /\s\+$\|\t/


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
