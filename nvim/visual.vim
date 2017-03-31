"------------------------------ Visuals ---------------------------------
set t_Co=256
set background=light

colorscheme motus
" colorscheme solarized
" colorscheme monokai
" colorscheme material-theme

" let &colorcolumn=join(range(81,999),",")
" let &colorcolumn="80,".join(range(120,999),",")
" highlight ColorColumn ctermbg=236 guibg=#ece6d5

" Background from terminal
highlight Normal ctermbg=none
highlight nonText ctermbg=none


" Use JavaScript mode for es6 files
autocmd BufNewFile,BufRead *.es6   set syntax=javascript
