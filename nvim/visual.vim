"------------------------------ Visuals ---------------------------------
set t_Co=256
set termguicolors
set background=dark

" colorscheme solarized
colorscheme monokai

let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=236 guibg=#333333

" Background from terminal
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE


" Use JavaScript mode for es6 files
autocmd BufNewFile,BufRead *.es6   set syntax=javascript
