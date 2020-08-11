set nocompatible              " be iMproved, required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'taglist.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'chemzqm/wxapp.vim'

"let s:uname = system("uname")
"if s:uname == "Linux\n"
"Plugin 'lilydjwg/fcitx.vim'
"elseif s:uname == "Darwin\n"
"Plugin 'CodeFalling/fcitx-vim-osx'
"endif

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Highlighting
syntax on

" Number
"set nu

" Indent
set tabstop=4
set shiftwidth=4
"set cindent
"filetype plugin indent on
"set autoindent

" Buffer
" enable switching between buffers without saving
set hidden

" Save cursor position
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" Ctags
"set tags=$HOME/.vim/tags/tags
