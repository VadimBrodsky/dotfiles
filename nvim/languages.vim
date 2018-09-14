" Language Specific

" GoLang
autocmd FileType go set noexpandtab
autocmd FileType go set shiftwidth=4
autocmd FileType go set softtabstop=4
autocmd FileType go set tabstop=4

" Elm
autocmd FileType elm autocmd BufWritePre <buffer> :ElmFormat
