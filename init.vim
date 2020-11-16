call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'herringtondarkholme/yats.vim'
call plug#end()

set tabstop=2 shiftwidth=2 expandtab smarttab
set smartindent autoindent
set cursorline
set number
set relativenumber
set clipboard+=unnamedplus
set termguicolors
set colorcolumn=80
set updatetime=300 "Faster completion
set mouse=a
set splitbelow " Horizontal splits will automatically be below
set splitright " Vertical splits will automatically be to the right
set formatoptions-=cro " Stop newline continution of comments
set timeoutlen=500

let mapleader="\<Space>"
let g:netrw_dirhistmax = 0 "Stop writing .netrwhist
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"===== Plugin =====
"coc
set nobackup "Recommended by coc
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"lightline 
set noshowmode "Remove 'insert' text
