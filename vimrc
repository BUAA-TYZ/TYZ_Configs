set nocompatible " not vi compatible

"------------------
" Syntax and indent
"------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them 

filetype on
filetype indent on 
filetype plugin indent on " enable file type detection
set autoindent
set cindent

"------------------
" Basic editing config
"------------------
set shortmess+=I " disable startup message
set nu
set relativenumber
set hlsearch
set incsearch

set tabstop=4
set shiftwidth=4

" set cursorline
" smart case-sensitive search
set ignorecase
set smartcase

set mouse+=a " enable mouse mode

set nofoldenable " disable folding by default

"--------------------
" Misc configurations
"--------------------

" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
" inoremap { {}<ESC>i
" inoremap ' ''<ESC>i
" inoremap " ""<ESC>i
