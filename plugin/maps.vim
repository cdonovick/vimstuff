" Maps
" =============================================================================
let mapleader = ";"
" Clear search results
nnoremap <leader> :nohl<CR>

" buffer command
nnoremap <leader>j :tabp<CR>
nnoremap <leader>k :tabn<CR>
nnoremap <leader>J :tabm -1<CR>
nnoremap <leader>K :tabm +1<CR>

" Toggle spell
nnoremap <leader>s :setlocal spell! spelllang=en_us<CR>

" Auto verymagic
nnoremap / /\v
vnoremap / /\v

" Use global register for copy paste
"vnoremap d "+d
"vnoremap y "+y
"vnoremap p ""ygv"+p
"nnoremap d "+d
"nnoremap y "+y
"nnoremap p "+p

"command! e tabe
"cnoremap e tabe
