" Fonts & Colors
colorscheme solarized
set background=dark

" Ugly toolbar out of my way!
set guioptions=egrt

" Don't harass me with silly sounds or flashes
set visualbell
set t_vb=

" A nice dimension
set lines=55
set columns=120

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

" MacVim options
if has("gui_macvim")
  set guifont=DejaVu\ Sans\ Mono:h13
  set linespace=0

  " When I go full screen, I mean FULL
  set fuoptions=maxvert,maxhorz

  " TextMate-like indentation
  nmap <D-[> <<
  nmap <D-]> >>
  vmap <D-[> <gv
  vmap <D-]> >gv
  imap <D-[> <Esc><<
  imap <D-]> <Esc>>>

  " TextMate-like commenting
  nmap <D-/> gcc
  vmap <D-/> gC
  imap <D-/> <Esc>gcci

  " TextMate-like Command-T
  map <D-t> :CommandT<CR>
  imap <D-t> <Esc>:CommandT<CR>

  " Remap 'New tab' to apple-shift-t
  macmenu &File.New\ Tab key=<D-T>
else
  "gVim counterpart

  set guifont=DejaVu\ Sans\ Mono\ Bold\ 10
  set linespace=-2

  " TextMate-like indentation
  nmap <M-[> <<
  nmap <M-]> >>
  vmap <M-[> <gv
  vmap <M-]> >gv
  imap <M-[> <Esc><<
  imap <M-]> <Esc>>>

  " TextMate-like commenting
  nmap <M-/> gcc
  vmap <M-/> gC
  imap <M-/> <Esc>gcci

  " TextMate-like Command-T
  map <M-t> :CommandT<CR>
  imap <M-t> <Esc>:CommandT<CR>

endif
