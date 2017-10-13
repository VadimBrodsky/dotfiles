"----------------------------- Key Mappings ----------------------------------
" Space is my leader
let mapleader = "\<Space>"


" Normal Mode Mappings
" ----------------------------------------------------------------------------
" replace 0 with ^
nmap 0 ^

" Move up and down by visible lines if the current line is wrapper
nmap j gj
nmap k gk

" insert mode mappings
imap jk <esc>
imap kj <esc>

" Quit Vim like Spacemacs
nmap <leader>qq :q<cr>
nmap <leader>wc :q<cr>
nmap <leader>qa :qa<cr>

" Remove search or highlight
nmap <leader>nh :nohlsearch<cr>
nmap <leader>ns :set nospell<cr>

" Bracket matching, same as %
nnoremap <tab> %
vnoremap <tab> %

" Copy the entire buffer into the system register
" nmap <leader>co ggVG*y

" Paste from clipboard without indentation
" nmap <leader>vr :sp $MYVIMRC<cr>
" nmap <leader>p :set paste<cr>o<esc>"*]p:set nopaste<cr>


" Copy to clipboard
" --------------------------------------------------------------------------
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P


" File Motions - f
" --------------------------------------------------------------------------
nmap <C-s> :w<cr>
nmap <leader>fs :w<cr>
nmap <leader>ff :Explore <cr>
nmap <leader>fv :Vexplore <cr>
nmap <leader>fh :Hexplore <cr>


" Vimrc Motions - v
" --------------------------------------------------------------------------
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>vi :tabedit ~/.config/nvim/init.vim<cr>
nmap <leader>vo :source $MYVIMRC<cr>



" Buffer Motions - b
" --------------------------------------------------------------------------
nmap <leader><tab> :b#<cr>
nmap <leader>bb :CtrlPBuffer<Cr>
nmap <Leader>bd :exe "bn\|:bd#"<Cr>

" Project Motions - p
" --------------------------------------------------------------------------
nmap <leader>pf :CtrlP <Cr>


" Splits Motions - w
" --------------------------------------------------------------------------
nmap <leader>- :split<Cr>
nmap <leader>/ :vsp<Cr>

" Current buffer to new tab
nmap <leader>wm :tabedit %<Cr>

" Resize splits
nnoremap <leader>0 :wincmd _<cr> :wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Pre-populate a split command with the current directory
" WIP FIX ME
" nmap <leader>w- :vnew <C-r>=escape(expand("


" Terminal
" --------------------------------------------------------------------------
:tnoremap <Esc> <C-\><C-n>      "Exit terminal mode


" Tab mappings - t
" --------------------------------------------------------------------------
nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>tf :tabfirst<cr>
nmap <leader>tl :tablast<cr>
 map <leader>tm :tabmove
 map <leader>to :tabonly<cr>
" nmap <leader>tn :tabnext<cr>
" nmap <leader>tp :tabprevious<cr>

" Airline tab mappings
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" nmap <leader>- <Plug>AirlineSelectPrevTab
" nmap <leader>+ <Plug>AirlineSelectNextTab


" Toggles
" --------------------------------------------------------------------------
" Toggle between normal and relative numbering.
" Change Number Toggle
nnoremap <leader>cnt :call NumberToggle()<cr>

" Hide numbers
" Change Number Hide
nnoremap <leader>cnh :set nornu nonu <cr>

" Show numbers
" Change Number Show
nnoremap <leader>cns :set number<cr>


" Change color theme
nmap <leader>ccp :PrevColorScheme<cr>
nmap <leader>ccn :NextColorScheme<cr>
nmap <leader>ccr :RandomColorScheme<cr>


" Auto Commands
" --------------------------------------------------------------------------
  " :h autocmd-events
  " when a help file is open remap the q key to :q<cr>
  autocmd Filetype help nnoremap <buffer> q :q<cr>
  " automatically rebalance windows on Vim resize
  autocmd VimResized * :wincmd=  
  " save file on focus lost
  autocmd FocusLost * :wa


" Command Aliases
" --------------------------------------------------------------------------
  command! Q q
  command! Qall qall
  command! QA qall
  command! E e
  command! PrettyJson %!python -m json.tool
  command! Shuffle %!perl -MList::Util=shuffle -e 'print shuffle(<STDIN>);'
