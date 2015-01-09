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
set showbreak=\ ...\ 

" Colors
" =============================================================================
"set background=dark
colorscheme my


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
if has('gui_running')
      set guifont=Monospace\ 11
endif

" Modules
" =============================================================================

" get folder of this file, handles symlinks
" http://stackoverflow.com/a/18734557
let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" My method for including seems like a hack 
" Global Key mapping
exec "source " .  s:path . "/maps.vim"

" Language specific modules
exec "source " .  s:path . "/c.vim"
exec "source " .  s:path . "/octave.vim"
