set tabstop=4
set shiftwidth=4
set spelllang=pl,en
set nocompatible
set backspace=2
set incsearch
set hlsearch
set wildmenu
set tw=78
set number
set backupdir=~/.vim/backups,.,~
syntax on

colorscheme mocha

if has("autocmd")
	filetype plugin indent on
	autocmd Filetype java setlocal omnifunc=javacomplete#Complete
	imap <C-space> <C-x><C-o>
else
	set autoindent
endif

nmap gr :tabprevious<CR>
nmap <C-q> :qall<CR>
nmap <C-n> :tabnew<CR>
nmap <F12> :!ctags -R .<CR>

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
