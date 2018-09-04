" Maps
" =============================================================================
let mapleader = ";"
" Clear search results
nnoremap <leader>l :nohl<CR>

" Toggle spell
nnoremap <leader>s :setlocal spell! spelllang=en_us<CR>

" Auto verymagic
nnoremap / /\v
vnoremap / /\v

" Use global register for copy paste
vnoremap d "+d
vnoremap y "+y
vnoremap p "+p
"vnoremap p ""ygv"+p
nnoremap d "+d
nnoremap y "+y
nnoremap p "+p
nnoremap P "+P

"command! e tabe
nnoremap <leader>t :tab sball<CR>
nnoremap <leader>e :tabe


" tab commands;
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

nnoremap <leader><C-d> :close<CR>

"
"map <Left> h
"map <Right> l
"map <Up> k
"map <Down> j
"

" Maps for ycm
nnoremap <leader>g :tab split<CR>:YcmCompleter GoTo<CR>
nnoremap <leader>d :tab split<CR>:YcmCompleter GoToDeclaration<CR>
nnoremap <leader>D :tab split<CR>:YcmCompleter GoToDefinition<CR>
nnoremap <leader>i :tab split<CR>:YcmCompleter GoToInclude<CR>

