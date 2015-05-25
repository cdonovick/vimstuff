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

" Use global register for copy paste
vnoremap d "+d
vnoremap y "+y
vnoremap p ""ygv"+p
nnoremap d "+d
nnoremap y "+y
nnoremap p "+p
