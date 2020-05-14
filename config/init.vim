set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" can also use splitbelow to split on bottom
set splitright " splits to the rightside on using vs

" something related to terminal colors being perfect
set termguicolors
colorscheme desert

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'

call plug#end()

" for COC autocomplete stuff
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


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
endif

nnoremap  :Commentary<cr>
vnoremap  :Commentary<CR>
