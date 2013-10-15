" Ugly toolbar out of my way!
set guioptions=egrt

" Don't harass me with silly sounds or flashes
set visualbell
set t_vb=

" A nice dimension
set lines=55
set columns=120

" MacVim options
if has("gui_macvim")

  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
  set linespace=2

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
  map <D-b> :CommandTBuffer<CR>
  imap <D-b> <Esc>:CommandTBuffer<CR>

  " Remap 'New tab' to apple-shift-t
  macmenu &File.New\ Tab key=<D-T>
  " Remap 'Make' to apple-shift-b
  macmenu &Tools.Make key=<D-B>

else

  " gVim counterpart

  set guifont=DejaVu\ Sans\ Mono\ 10
  set linespace=0

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
  map <M-b> :CommandTBuffer<CR>
  imap <M-b> <Esc>:CommandTBuffer<CR>

endif
