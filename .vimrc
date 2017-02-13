set nocompatible              " be iMproved, required
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

inoremap jk <esc>

set number

syntax on

"Indent
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
filetype plugin indent on

"Buffer
set hidden

"Save cursor position
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

"Ctags
set tags=./tags,tags;$HOME
