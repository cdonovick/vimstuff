" Maps
" =============================================================================
let mapleader = ";"
" Clear search results
nnoremap <leader> :nohl<CR>

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
nnoremap <leader>t :tab sball<CR>
nnoremap <leader>e :tabe


" tab commands
nnoremap <leader>j :tabp<CR>
nnoremap <leader>k :tabn<CR>
nnoremap <leader>J :tabm -1<CR>
nnoremap <leader>K :tabm +1<CR>

" window commands
nnoremap <leader>w <C-w>
"nnoremap <leader>wn <C-w>n
"nnoremap <leader>wh <C-w>h
"nnoremap <leader>wj <C-w>j
"nnoremap <leader>wk <C-w>k
"nnoremap <leader>wl <C-w>l
"
"map <Left> h
"map <Right> l
"map <Up> k
"map <Down> j
"
