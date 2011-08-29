set tabstop=4
set shiftwidth=4
set softtabstop=4
set spelllang=pl,en
set nocompatible
set backspace=2
set incsearch
set hlsearch
set wildmenu
set tw=78
set number
set backupdir=~/.vim/backups,.,~,/tmp
set directory=~/.vim/backups,.,~,/tmp
set scrolloff=3
set showmode
set list
set listchars=tab:▸\ ,trail:·
set history=1000

colorscheme mocha

call pathogen#runtime_append_all_bundles()

syntax on
if has("autocmd")
	filetype off
	filetype plugin indent on
else
	set autoindent
endif

let mapleader = ','

" Remove trailing spaces automagically.
autocmd BufWritePre * :%s/\s\+$//e

runtime macros/matchit.vim

nnoremap gr :tabprevious<CR>
nnoremap <C-q> :qall<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <F12> :!ctags -R .<CR>
nnoremap <leader>a GVgg
inoremap kj <Esc>
nnoremap ; :
" Use normal regexps
nnoremap / /\v
vnoremap / /\v
" Tab matches brackets
nnoremap <tab> %
vnoremap <tab> %
" Disable help
inoremap <f1> <esc>
nnoremap <f1> <esc>
vnoremap <f1> <esc>

" Git
au BufNewFile,BufRead COMMIT_EDITMSG setlocal textwidth=75 fileencoding=utf-8 encoding=utf-8 filetype=gitcommit spell

" Markdown
augroup markdown
	au! BufRead,BufNewFile *.mkd   setfiletype mkd
	au! BufRead,BufNewFile *.mdwn   setfiletype mkd
augroup END

" Vala
autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala
let vala_comment_strings = 1
let vala_space_errors = 1
let vala_no_tab_space_error = 1

" Squirrel
au BufNewFile,BufRead *.nut setf squirrel

" Ruby
au BufNewFile,BufRead Gemfile setlocal filetype=ruby
au BufNewFile,BufRead config.ru setlocal filetype=ruby
