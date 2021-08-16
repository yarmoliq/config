syntax on

colorscheme molokai

set noerrorbells

set relativenumber
set nu
set scrolloff=8

set nohlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set ruler                       " line and column numbers in the bottom right corner

set softtabstop=4 expandtab shiftwidth=4 smarttab
filetype indent on
set ai      " also indentation thingy
set smartindent
set nowrap

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set ignorecase      " or ic / noic

set rtp+=~/.fzf     " runtime path

execute "set <A-j>=\ej"
execute "set <A-k>=\ek"
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader>f :call fzf#run({
\   'down': '40%',
\   'sink': 'edit'})<CR>

nnoremap <silent> <Leader>s :call fzf#run({
\   'down': '40%',
\   'sink': 'botright split' })<CR>

" Open files in vertical horizontal split
nnoremap <silent> <Leader>v :call fzf#run({
\   'right': winwidth('.') / 2,
\   'sink':  'vertical botright split' })<CR>

nnoremap <silent> <Leader>b :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>
