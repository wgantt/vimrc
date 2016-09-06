" PLUGINS -------------------------------------------------- {{{

" a set of plugins that comes with the standard Vim distribution

" activate plug-in manager
call plug#begin()

" NERD_commenter -- easier commenting
Plug '~/.vim/plugin/NERD_commenter'

" Solarized color scheme
Plug '~/.vim/plugin/vim-colors-solarized'

" Vim's built-in man page viewer (for easier reading of man entries)
Plug '~/.vim/plugin/man'

call plug#end()
" }}}

" DISPLAY ----------------------------------------------- {{{

" adjust command prompt height to minimize 'hit enter' notices
set cmdheight=2
" solarized color scheme
syntax enable
set background=dark
colorscheme solarized

" }}}

" MISCELLANEOUS ----------------------------------------- {{{

" turn on syntax coloring
syntax on

" match search patterns as they are typed
set incsearch

" highlight search matches
set hlsearch

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

" }}}

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

" put a semicolon at the end of the current
" line and return to the current position
nnoremap <leader>; mqA;<esc>`q;

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

" open previous buffer in a vertical split
nnoremap <leader>vb :execute "rightbelow vsplit " bufname("#")<CR>

" mark trailing whitespace characters
nnoremap <leader>ws :match Search /\v\s\_$/<CR>

" clear a match search
nnoremap <leader>wc :match none<CR>
 
" add a '\v' (very magic) whenever beginning a search
nnoremap / /\v
nnoremap ? ?\v

" clear highlighting from last search
nnoremap <leader>nh :nohlsearch<CR>
" }}}

" ABBREVIATIONS {{{

" Typos
iabbrev adn and
iabbrev tehn then
iabbrev  waht what

" Shortcuts
iabbrev @@ wgantt@bowdoin.edu
iabbrev Wg William Gantt
iabbrev wg Will Gantt
iabbrev cpr Copyright (c) 2016 William Gantt, all rights reserved
iabbrev sig WAHG
iabbrev stg something
iabbrev sby somebody
iabbrev bc because
iabbrev wrt with regard to
iabbrev mk # -*- MakeFile -*-
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

