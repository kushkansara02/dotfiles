" Use the Solarized Dark theme
set background=dark

set nocompatible
set clipboard=unnamed
set wildmenu
set esckeys
set backspace=indent,eol,start
set ttyfast
set gdefault

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

set number
syntax on
set cursorline
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set colorcolumn=80

set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
set hlsearch
set incsearch
set mouse=a
set noerrorbells
set nostartofline
set ruler
set shortmess=atI
set showmode
set title
set showcmd

if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
