" Syntax colouring for a zillion languages
syntax on

" I read this is nice
set nocompatible

" UTF-8 is the only encoding I want
set fileencodings=utf-8

" Tabs sweet tabs
set tabstop=2
set expandtab
set smartindent
set autoindent
set shiftwidth=2

" Let's get wild
set wildmenu
set wildmode=longest:full

" Fast window switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" TextMate-like indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Allow hiding modified buffers (plays nice with Command-T plugin)
set hidden

" This is required for NERDCommenter to guess how to comment
filetype plugin on
" I really like this option, it puts a space after a comment char
let g:NERDSpaceDelims = 1
