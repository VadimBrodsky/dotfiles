" Command Aliases
" --------------------------------------------------------------------------
command! Q q
command! Qall qall
command! QA qall
command! E e

" Toggle between relateive and absolute line numbers
" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc
command! NumberToggle call NumberToggle()<cr>

" Run Prettier
command! GoPretty silent %!prettier --stdin --trailing-comma all --single-quote<Cr>

" Run Elm Format
command! ElmFormat :silent %!elm-format --stdin
