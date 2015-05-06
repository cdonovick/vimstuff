" VUNDLE
" =============================================================================


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugins
" =======
" C/C++ autocomple
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


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
set showbreak=    

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
if has('gui_running')
      set guifont=Monospace\ 12
endif

" Modules
" =============================================================================

" get folder of this file, handles symlinks
" http://stackoverflow.com/a/18734557
let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" My method for including seems like a hack 
" Global Key mapping
exec "source " . s:path . "/maps.vim"

" Language specific modules
exec "source " . s:path . "/c.vim"
exec "source " . s:path . "/octave.vim"
exec "source " . s:path . "/xml.vim"

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm/.ycm_extra_conf.py'

