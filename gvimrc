" Fonts & Colors
set guifont=DejaVu\ Sans\ Mono:h13
colorscheme solarized
set background=dark

" Ugly toolbar out of my way!
set guioptions=egmrt

" Don't harass me with silly sounds or flashes
set visualbell
set t_vb=

" A nice dimension for my screen
set lines=55
set columns=120

" When I go full screen, I mean FULL
set fuoptions=maxvert,maxhorz

" Show line numbers
set nu

" Always show the status line
set laststatus=2

" Simple statusline to start with
set statusline=%f\ \ %c,%l/%L\ %P

" Let's add some info from the Fugitive plugin
set statusline+=\ \ %{fugitive#statusline()}

" Useful snippet straight from VIM documentation
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis

