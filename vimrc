"Tim Pope is a genius, let's face it
let g:pathogen_disabled = ["ragtag","taglist"]
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Syntax colouring for a zillion languages
syntax on

" I read this is nice
set nocompatible

" UTF-8 is the only encoding I want
set fileencodings=utf-8
set encoding=utf-8

" Backspace with license to kill
set backspace=2

" Tabs sweet tabs
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" set smartindent
" set autoindent

" Magic indenting
filetype plugin indent on

" Keep tidy
set formatoptions=tcqro
set textwidth=100
set wrap
set wrapmargin=2

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

