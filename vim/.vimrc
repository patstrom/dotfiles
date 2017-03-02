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

" Show existing tabs with 4 spaces
set tabstop=4
" Indent (>) with 4 spaces
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set smarttab
set autoindent

" Highligt search results
set hlsearch
" Cancel search with esc
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

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
