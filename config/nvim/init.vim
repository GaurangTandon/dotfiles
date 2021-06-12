set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" can also use splitbelow to split on bottom
set splitright " splits to the rightside on using vs

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'lervag/vimtex'
Plug 'tpope/vim-surround'

Plug 'neoclide/coc-eslint'

" Plug 'scrooloose/nerdtree'
" i couldn't get neoformat to work on cpp (doesn't make any change)
" Plug 'sbdchd/neoformat'

call plug#end()

filetype plugin indent on

" something related to terminal colors being perfect
set termguicolors

let g:gruvbox_contrast_dark = 'hard'
colo gruvbox

if has("autocmd")
    " jump to the last known cursor location 
    " and center the caret on the screen
    " for all files except commit log files
    " uses vim marks <3
    augroup vimStartup
        au!
        autocmd BufReadPost *
          \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
          \ |   exe "normal! g`\""
          \ |   exe "normal! zz"
          \ | endif
    augroup END

    augroup commenting
        au!
        autocmd FileType cpp setlocal commentstring=//\ %s
    augroup END

    " fix for pyright to detect workspace root correctly
    autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'setup.py', 'pyproject.toml', 'pyrightconfig.json']
endif

nnoremap  :Commentary<CR>j
vnoremap  :Commentary<CR>j

" from lord yoogo, helps me escape from a terminal and refocus my cursor in a
" vim buffer
" tnoremap <Esc> <C-\><C-n>
" because of this fzf breaks, so not using it

let mapleader=" "

" stop vimtex from complaining
let g:tex_flavor = 'latex'


" coc.nvim recommended {{{

source ~/.config/nvim/coc-init.vim

" }}}

set laststatus=2
set statusline^=%m\ %<%f%h

" fzf
nnoremap <F2> :Buffers<CR>
nnoremap <leader>l :Files<CR>
