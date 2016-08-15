" This is a test comment

" turn on syntax coloring
syntax on

" number the lines
set number

" show matching paren, bracket, etc.
set showmatch

" paren matching time
set matchtime=3

" ignore case when searching
set ignorecase

" always display status line
set laststatus=2

" always fold code when opening a file
set foldlevelstart=0

" LEADERS {{{
let mapleader = ";"
let maplocalleader = ","

" }}}

" Vimscript file settings ---------------------------- {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}


" MAPPINGS {{{

" move the current line up one
nnoremap _ kddpk

" move the current line down one
nnoremap - ddp

" convert current word to uppercase in normal mode
nnoremap <c-u> viwUea<Esc>

" convert current word to uppercase in insert mode
inoremap <c-u> <Esc>lviwUea

" make it easier to open your .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" make it easier to source your .vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

" make quitting easier
nnoremap <leader>q :q!<cr>
nnoremap <leader>w :wq<cr>

" surround the current word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" surround the current word in single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" undo quotes
nnoremap <leader>-' viw<esc>lxbhxe

" surround previous visual mode selection with double quotes
nnoremap <leader>"" `<i"<esc>`>la"<esc>

" remove quotes from previous visual mode selection
nnoremap <leader>-"" `<x`>lx

" change mapping for switching between windows
nnoremap <leader>ww <c-w><c-w>

" make redo easier to type
nnoremap <leader>r <c-r>

" page down
nnoremap <leader>f <c-f>

" page up
nnoremap <leader>b <c-b>

" make escaping from insert mode easier
inoremap jk <esc>

" make escaping from visual mode easier
vnoremap jk <esc>

" prevent myself from escaping insert mode with <esc>
inoremap <esc> <esc>

" for-loops
inoremap <leader>fr for (int i=0; i<; i++)<esc>5hi

" while loops
inoremap <leader>wh while ()<esc>i

" }}}

" ABBREVIATIONS {{{

" Typos
iab adn and
iab tehn then
iab waht what

" Shortcuts
iab @@ wgantt@bowdoin.edu
iab Wg William Gantt
iab wg Will Gantt
iab cpt Copyright (c) 2016 William Gantt, all rights reserved
iab sig WAHG

" }}}

" AUTOCOMMANDS {{{

" Python
augroup filetype_py
	autocmd!
	autocmd FileType python nnoremap <buffer> <localleader>c I##<esc>
augroup END

" Java
augroup filetype_java
	autocmd!
	autocmd FileType java nnoremap <buffer> <localleader>c I//<esc>
augroup END

" Javascript
augroup filetype_js
	autocmd!
	autocmd FileType javascript nnoremap <buffer> 
		\ <localleader>c I//<esc>
augroup END

" C 
augroup filetype_c
	autocmd!
	autocmd FileType c inoremap <buffer> <localleader>r return 
	autocmd FileType c inoremap <buffer> return NOPE!
	autocmd FileType c inoremap <buffer> <Tab> <Space><Space>
augroup END

" }}}

" STATUS LINE {{{

set statusline=%f		" Path to the file
set statusline+=\ -\    	" Separator
set statusline+=FileType:\ %y	" File type
set statusline+=%=		" Switch to the right side
set statusline+=[%4l		" Current line
set statusline+=/		" Separator
set statusline+=%-4L]		" Total lines

" }}}

" PLUG-INS {{{

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" }}}
