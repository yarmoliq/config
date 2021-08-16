syntax on

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

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/completion-nvim'
Plug 'tpope/vim-fugitive'

call plug#end()

colorscheme gruvbox

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
imap <tab> <Plug>(completion_smart_tab)

lua << EOF
require'lspconfig'.ccls.setup{ on_attach=require'completion'.on_attach }
EOF
