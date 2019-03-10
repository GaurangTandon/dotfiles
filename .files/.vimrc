set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'

call vundle#end()

" always number lines
set number
" always wrap long lines
set wrap

set expandtab smarttab
" set tab stop
set ts=4
" set shift width
set sw=4

set backspace=indent,eol,start
" set auto indent and smart indent
set ai si
