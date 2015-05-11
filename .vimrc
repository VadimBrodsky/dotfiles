execute pathogen#infect()
"syntax on
filetype plugin indent on

syntax enable   " enable syntax processing

" solarized color scheme 
set background=dark
" set background=light
colorscheme solarized

set tabstop=2   " number of visual spacer per TAB
set number 			" show line numbers
set showcmd     " show command in bottom bar
set cursorline  " highlight current line

:setlocal spell spelllang=en_us " spell check

ino jj <esc> " remap ESC to jk
cno jj <c-c>
vno v <esc>

set textwidth=79
set wrapmargin=2
set colorcolumn=80
