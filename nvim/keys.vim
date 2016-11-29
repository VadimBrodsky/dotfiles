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

" Remove search or highlight
nmap <leader>nh :nohlsearch<cr>
nmap <leader>ns :set nospell<cr>

" Copy the entire buffer into the system register
" nmap <leader>co ggVG*y

" Paste from clipboard without indentation
" nmap <leader>vr :sp $MYVIMRC<cr>
" nmap <leader>p :set paste<cr>o<esc>"*]p:set nopaste<cr>


" File Motions - f
" --------------------------------------------------------------------------
nmap <C-s> :w<cr>
nmap <leader>fs :w<cr>
nmap <leader>ff :cd %:p:h<cr> :e . <cr>


" Vimrc Motions - v
" --------------------------------------------------------------------------
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>vi :tabedit ~/.config/nvim/init.vim<cr>
nmap <leader>vo :source $MYVIMRC<cr>



" Buffer Motions - b
" --------------------------------------------------------------------------
nmap <leader><tab> :b#<cr>
nmap <leader>bb :CtrlPBuffer <Cr>


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


" Toggles
" --------------------------------------------------------------------------
" Toggle between normal and relative numbering.
nnoremap <leader>cn :call NumberToggle()<cr>


" Auto Commands
" --------------------------------------------------------------------------
  " :h autocmd-events
  " when a help file is open remap the q key to :q<cr>
  autocmd Filetype help nnoremap <buffer> q :q<cr>
  " automatically rebalance windows on Vim resize
  autocmd VimResized * :wincmd=  


" Command Aliases
" --------------------------------------------------------------------------
  command! Q q
  command! Qall qall
  command! QA qall
  command! E e
