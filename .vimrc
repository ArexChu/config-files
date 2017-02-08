inoremap jk <esc>

set number

syntax on

"Indent
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
filetype plugin indent on

set hidden

"Save cursor position
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

"Taglist
let Tlist_Compact_Format = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <C-l> :TlistToggle<CR>

set tags=./tags,tags;$HOME
