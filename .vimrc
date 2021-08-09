syntax on

if &diff
    colorscheme mycolorscheme
endif

set noerrorbells

set relativenumber
highlight LineNr ctermfg=grey
set nu rnu

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
set ignorecase

set rtp+=~/.fzf

" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey

execute "set <A-j>=\ej"
execute "set <A-k>=\ek"
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP

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
