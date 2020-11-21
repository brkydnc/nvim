call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'herringtondarkholme/yats.vim'
call plug#end()

set tabstop=2 shiftwidth=2 expandtab smarttab
set smartindent autoindent
set nowrap
set cursorline
set number
set relativenumber
set clipboard+=unnamedplus
set termguicolors
set colorcolumn=80
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
"COC
set nobackup "Recommended by coc
set updatetime=300 "Faster completion
set hidden
set shortmess+=c

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

"LIGHTLINE
set noshowmode "Remove 'insert' text

"FZF
nnoremap <silent> <Leader>f :Files<CR>
let $FZF_DEFAULT_OPTS='--reverse'
