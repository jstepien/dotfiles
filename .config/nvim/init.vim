set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set incsearch
set hlsearch
set tw=80
set number
set scrolloff=3
set showmode
set list
set listchars=tab:▸\ ,trail:·
set nofsync
set ruler

call plug#begin('~/.config/nvim/plugged')

colorscheme morning

Plug 'editorconfig/editorconfig-vim'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim'

Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-sexp'
Plug 'clojure-vim/async-clj-omni'

Plug 'elixir-lang/vim-elixir'

Plug 'idris-hackers/idris-vim'

Plug 'rust-lang/rust.vim'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

let mapleader = ','

" Remove trailing spaces automagically.
autocmd BufWritePre * :%s/\s\+$//e

runtime macros/matchit.vim

nnoremap <F12> :!ctags -R .<CR>
nnoremap <leader>a GVgg
inoremap kj <Esc>
nnoremap ; :
vnoremap ; :
nnoremap <leader>e :Explore<CR>
" Use normal regexps
nnoremap / /\v
vnoremap / /\v
" Hide matches highlighting with Ctrl-\
nnoremap <C-\> :nohls<CR>
" Tab matches brackets
nnoremap <tab> %
vnoremap <tab> %
" Disable help
inoremap <f1> <esc>
nnoremap <f1> <esc>
vnoremap <f1> <esc>

" Git
au BufNewFile,BufRead COMMIT_EDITMSG setlocal textwidth=75 fileencoding=utf-8 encoding=utf-8 filetype=gitcommit spell spelllang=en

" Java
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" ctrlp-py-matcher
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
