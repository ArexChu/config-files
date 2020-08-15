" Highlighting
syntax on

" Indent
set tabstop=4
set shiftwidth=4

" Buffer
" enable switching between buffers without saving
set hidden

" Save cursor position
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END
