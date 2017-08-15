filetype on
filetype indent on
filetype plugin on

set autoread

" nvim cursor
set guicursor=

" set <Leader> to space
let mapleader=" "

" Switch to last file
nnoremap <Leader><Leader> :e#<CR>

" Exit insert mode
inoremap jj <ESC>

" Use alt-[hjkl] to select the active split!
nnoremap <silent> <A-h> <C-w>h
nnoremap <silent> <A-j> <C-w>j
nnoremap <silent> <A-k> <C-w>k
nnoremap <silent> <A-l> <C-w>l

" Use alt-[arrow keys] to resize active split
nnoremap <silent> <A-Up> :wincmd -<CR>
nnoremap <silent> <A-Down> :wincmd +<CR>
nnoremap <silent> <A-Left> :wincmd <<CR>
nnoremap <silent> <A-Right> :wincmd ><CR>
" Equalize with both alt-0 and alt-= since sometimes I forget to press the shift key
nnoremap <silent> <A-0> <C-w> =<CR>
nnoremap <silent> <A-=> <C-w> =<CR>

" Use alt-shift-[hjkl] to move active split
nnoremap <silent> <A-H> <C-w>H
nnoremap <silent> <A-J> <C-w>J
nnoremap <silent> <A-K> <C-w>K
nnoremap <silent> <A-L> <C-w>L

" Automatically equalize splits when window resize
autocmd VimResized * wincmd =

" More natural splits
set splitbelow
set splitright

" Show existing tabs with x spaces
set tabstop=4
" Indent (>) with x spaces
set shiftwidth=4
" Expand tab into spaces
set expandtab

set smarttab
set autoindent


" Highlight matching parenthesis
" set showmatch

syntax on
colorscheme tomorrow_night_eighties

" Show full filepath all the time
set laststatus=2
set statusline+=%F

" Set a colored column
set colorcolumn=90

" Line numbers
set number

" Highligt search results
set hlsearch
" Cancel search with enter (using esc here caused sudo vim to start with
" replace mode)
nnoremap <silent> <Enter> :nohlsearch<Bar>:echo<CR>

" Automatically wrap text at 72 characters when writing vim commits
au FileType gitcommit setlocal tw=72

" Plugin
call plug#begin('~/.local/share/nvim/plugged')

Plug 'rust-lang/rust.vim'

call plug#end()
