syntax on

set noerrorbells

set number
" set hlsearch                    " highlight search terms
set ruler

set incsearch                   " show search matches as you type

set softtabstop=4 expandtab shiftwidth=4 smarttab
set ai
set smartindent
set nowrap

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set autoread

set rtp+=~/fzf

" set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

execute "set <A-j>=\ej"
execute "set <A-k>=\ek"
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP
