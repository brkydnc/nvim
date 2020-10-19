call plug#begin('~/.local/share/nvim/plugged')

"Common
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Language specific
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

call plug#end()

"tabs into spaces
set tabstop=2 shiftwidth=2 expandtab

"lines
set cursorline
set number
set relativenumber

"colors & etc.
set termguicolors
colorscheme gruvbox

"set system clipboard
set clipboard+=unnamedplus

"key mappings
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"80 chars limit
set colorcolumn=80

"Stop writing .netrwhist
let g:netrw_dirhistmax = 0
"====== Plugin =====
"CoC
  "use <c-space>for trigger completion
  inoremap <silent><expr> <c-space> coc#refresh()
  "Use <Tab> and <S-Tab> to navigate the completion list:
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"lightline 
  "remove 'insert' text
  set noshowmode
