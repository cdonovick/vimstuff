" Basic UI and usage tweaks more complex things in own modules
" Usage
" =============================================================================
set hidden
set magic

" filetypes
" =============================================================================
syntax on
filetype plugin on
filetype indent on

" UI
" =============================================================================
set statusline=[%n]%-2.(%H%M\ %)%<%f%=%-14.(%l/%L,\ %c%V%)\ %P
set number
set ruler
set laststatus=2
set visualbell
set showbreak=+\ \ \ \  
set nowrap

" Colors
" =============================================================================
"set background=dark
colorscheme AltF4 

" Search
" =============================================================================
set smartcase
set incsearch
set hlsearch

" Tabs 
" =============================================================================
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
 
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
