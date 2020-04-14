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

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

set ignorecase
set smartcase

set relativenumber

" In normal mode or in insert mode, press Alt-j to move the current line down, or press Alt-k to move the current line up.
" After visually selecting a block of lines (for example, by pressing V then moving the cursor down), press Alt-j to move the whole block down, or press Alt-k to move the block up.
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" insert a line below while keeping cursor in place
nnoremap zj o<Esc>k
nnoremap zk O<Esc>j

" syntax highligh, should be enabled by default right??
syntax on
