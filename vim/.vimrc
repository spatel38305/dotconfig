:syntax on

set t_kb=
set nocompatible
set backspace=eol,indent,start
set autoindent
set smartindent

" don't highlight the last search upon startup
set viminfo="h"

" Do C-style auto indentation on C/C++/Perl files only :)
:filetype on
:autocmd FileType c,cpp,perl :set cindent

" stop Vim from beeping all the time
set vb

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" uncomment to insert spaces instead of a tab when tab is pressed
"set expandtab

set ruler
set background=dark

"Tell you if you are in insert mode
set showmode

"match parenthesis, i.e. ) with (  and } with {
set showmatch

"ignore case when doing searches
set ignorecase
set smartcase

"tell you how many lines have been changed
set report=0

set scrolloff=5
set wildmode=longest,list
set incsearch
set hlsearch

:colorscheme elflord


set showtabline=2
set number
set mouse=a

:autocmd BufNewFile *.c 0r ~/.vim/templates/template.c
:autocmd BufNewFile *.cpp 0r ~/.vim/templates/template.cpp
:autocmd BufNewFile *.sh 0r ~/.vim/templates/template.sh
:autocmd BufNewFile *.py 0r ~/.vim/templates/template.py

set cursorline
set encoding=utf-8

