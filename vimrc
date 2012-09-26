" Tim Pope is a genius, let's face it
let g:pathogen_disabled = ["ragtag","taglist"]
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Syntax colouring for a zillion languages
syntax on

" I've read this is nice
set nocompatible

" Allow hiding modified buffers (plays nice with Command-T plugin)
set hidden

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

" Highlight tabs and trailing spaces
set listchars=tab:>\ ,trail:·,extends:>,precedes:<,nbsp:+
set list

" Magic indenting
filetype plugin indent on

" Keep tidy
set formatoptions=tcqro
set textwidth=100
set colorcolumn=80
set nowrap
set wrapmargin=2

" Let's get wild
set wildmenu
set wildmode=longest:full

" Smart searches
set ignorecase
set smartcase

" Smoooooth scrolling
set scrolloff=2
set scroll=5

" Now for some keybinding pleasure...

" * Moving faster up and down
noremap <C-e> <C-e><C-e><C-e><C-e><C-e>
noremap <C-y> <C-y><C-y><C-y><C-y><C-y>

" * Fast window switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" * I've been typing :NERDTree too many times
map <F2> <ESC>:NERDTreeToggle<RETURN>

" * Quick XML formatting that just works
map ,x :!tidy -q -i -xml -wrap 500<CR>

" * Remapping JSbeautify to a similar shortcut
map ,j :call g:Jsbeautify()<cr>:retab<cr>

" * Command-T shortcuts that works in every occasion
map ,t :CommandT<CR>
map ,b :CommandTBuffer<CR>

" Obscure plugin options...

" * Adding smartcase to Ack
let g:ackprg="ack -H --nocolor --nogroup --column --smart-case"

" * Keep Command-T short
let g:CommandTMaxHeight=15

