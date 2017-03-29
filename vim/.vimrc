filetype on
filetype indent on
filetype plugin on

set autoread

" set <Leader> to space
let mapleader=" "

nnoremap <Leader><Leader> :e#<CR>

" Use alt-[hjkl] to select the active split!
nmap <silent> <a-h> :wincmd h<CR>
nmap <silent> <a-j> :wincmd j<CR>
nmap <silent> <a-k> :wincmd k<CR>
nmap <silent> <a-l> :wincmd l<CR>

" Use alt-[arrow keys] to resize active split
nmap <silent> <a-Up> :wincmd -<CR>
nmap <silent> <a-Down> :wincmd +<CR>
nmap <silent> <a-Left> :wincmd <<CR>
nmap <silent> <a-Right> :wincmd ><CR>
" Equalize with both alt-0 and alt-= since sometimes I forget to press the shift key
nmap <silent> <a-0> :wincmd =<CR>
nmap <silent> <a-=> :wincmd =<CR>

" Use alt-shift-[hjkl] to move active split
nmap <silent> <a-H> :wincmd H<CR>
nmap <silent> <a-J> :wincmd J<CR>
nmap <silent> <a-K> :wincmd K<CR>
nmap <silent> <a-L> :wincmd L<CR>

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
