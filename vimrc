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

" Maps
" =============================================================================
let mapleader = ";"
" Clear search results
nnoremap <C-L> :nohl<CR><C-L>
" buffer command
nnoremap <leader>j :bp<CR>
nnoremap <leader>k :bn<CR>
nnoremap <leader>J :bfirst<CR>
nnoremap <leader>K :blast<CR>
" Toggle spell
nnoremap <leader>s :setlocal spell! spelllang=en_us<CR>
" Auto verymagic
nnoremap / /\v
vnoremap / /\v

" gvim
" =============================================================================
if has('gui_running')
      set guifont=Monospace\ 11
endif

" C/C++
" =============================================================================
" Auto include gaurds for headers
function! IncludeGuard()
    let name = substitute(toupper(expand('%:t')), '\.', "_", "g")
    let lines = []
    let lines +=  ["#ifndef " . name]
    let lines +=  ["#define " . name]
    let lines +=  [""]
    let lines +=  ["#endif"]
    return lines
endfunction
autocmd BufNewFile *.h  call append(0, IncludeGuard())

" Auto main.cpp
function! MainCPP()
    let lines = []
    if filereadable("standard.h")
        let lines += ["#include \"standard.h\""]
        let lines += [""]
    endif

    let lines += ["int main(int argc, char **argv) {"]
    let lines += [""]
    let lines += ["\treturn 0;"]
    let lines += ["}"]
    return lines
endfunction
autocmd BufNewFile [mM]ain.cpp call append(0, MainCPP())



" Octave
" =============================================================================
" Retrieved from: http://www.vim.org/scripts/script.php?script_id=3600
" Octave syntax 
augroup filetypedetect 
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
augroup END 
" Use keywords from Octave syntax language file for autocomplete 
if has("autocmd") && exists("+omnifunc") 
   autocmd Filetype octave 
   \	if &omnifunc == "" | 
   \	 setlocal omnifunc=syntaxcomplete#Complete | 
   \	endif 
endif
