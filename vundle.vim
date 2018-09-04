" VUNDLE
" =============================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
let &runtimepath .= ',' . expand(g:config_path . '/bundle/Vundle.vim')
call vundle#begin(expand(g:config_path . '/bundle/'))
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugins
" =======
" autocomple
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

" color coded
" Plugin 'jeaye/color_coded'

" prolog
Plugin 'adimit/prolog.vim'

" Tabular
Plugin 'godlygeek/tabular'

" Mark Down
" Requires Tabular
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0

" CMake
" Plugin 'pboettch/vim-cmake-syntax'

" haskell
Plugin 'eagletmt/neco-ghc'
Plugin 'neovimhaskell/haskell-vim'

" Python
Plugin 'hdima/python-syntax'

" Indentation guides
Plugin 'Yggdroot/indentLine'
let g:indentLine_color_gui  = '#54594a'
let g:indentLine_color_term = 240
let g:indentLine_char = '|'

" Recover .swp
Plugin 'chrisbra/Recover.vim'

" SMT2 Lib
Plugin 'bohlender/vim-smt2'

" swig
Plugin 'SpaceVim/vim-swig'

" Essence
" Plugin 'Bilalh/Essence-Syntax-Highlighting'

" Minizinc
" Plugin 'vale1410/vim-minizinc'
"
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

