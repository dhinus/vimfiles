" Tim Pope is a genius, let's face it
let g:pathogen_disabled = ["ragtag","taglist"]
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Syntax colouring for a zillion languages
syntax on

" Same colours for vim, gvim, macvim
colorscheme base16-default
set background=dark
set t_Co=256

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
autocmd FileType * set ts=2 sw=2 sts=2 expandtab
autocmd FileType c,m,h,objc,python,php,javascript set ts=4 sw=4 sts=4 expandtab

" Highlight tabs and trailing spaces
set listchars=tab:>\ ,trail:·,extends:>,precedes:<,nbsp:+
set list

" Magic indenting
filetype plugin indent on

" Keep tidy
set formatoptions=tcqro
set textwidth=80
set nowrap
set wrapmargin=2
if exists('+colorcolumn') " vim >= 7.3
  set colorcolumn=80
endif

" Let's get wild
set wildmenu
set wildmode=longest:full

" Smart searches
set ignorecase
set smartcase

" Smoooooth scrolling
set scrolloff=2
set scroll=5

" Natural splits
set splitbelow
set splitright

" Show line numbers
set nu

" Gently highlight the current line
set cursorline

" Always show the status line
set laststatus=2

" Simple statusline to start with
set statusline=%f\ \ %c,%l/%L\ %P

" Let's add some info from the Fugitive plugin
set statusline+=\ \ %{fugitive#statusline()}

" Useful snippet straight from VIM documentation
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

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

" * When your Meta key is not available... use the comma, Luke!
map ,t :CommandT<CR>
map ,b :CommandTBuffer<CR>

nmap ,[ <<
nmap ,] >>
vmap ,[ <gv
vmap ,] >gv
imap ,[ <Esc><<
imap ,] <Esc>>>

nmap ,/ gcc
vmap ,/ gC
imap ,/ <Esc>gcci

nmap ,T :tabnew<CR>
nmap ,{ :tabprev<CR>
nmap ,} :tabnext<CR>

" Obscure plugin options...

" * Adding smartcase to Ack
let g:ackprg="ack -H --nocolor --nogroup --column --smart-case"

" * Keep Command-T short
let g:CommandTMaxHeight=15

