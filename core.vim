" Basic UI and usage tweaks more complex things in own modules
" Usage
" =============================================================================
" set hidden

" filetypes
" =============================================================================
syntax on
filetype plugin on
filetype indent on

" UI
" =============================================================================

set statusline=%2n:\ %-2.(%M%h%w%r\ %)%<%f\ %y%=%-14.(%l/%L,\ %c%V%)\ %P
set number
set ruler
set laststatus=2
set visualbell
set showbreak=...
set nowrap
set scrolloff=2
set showmatch
set cursorline
set wildmenu
set showcmd


" Colors
" =============================================================================
"if has('termguicolors') && ( $TMUX == '' || eval(matchstr(system('tmux -V'), '\v\d+.\d+')) >= 2.2 )
"	colorscheme true
"else
"	colorscheme term
"endif
colorscheme true
"colorscheme term

" Search
" =============================================================================
set magic
set smartcase
set incsearch
set hlsearch

" Indent
" =============================================================================
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab
set autoindent
set cindent
set smarttab
set list lcs=tab:\|\ "important trailing whitespace

" Other
" =============================================================================
set undolevels=1000
set backspace=indent,eol,start

" gvim
" =============================================================================
set guifont=Monospace\ 11
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
