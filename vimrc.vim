" Directory to search for module
let s:m_paths = ["/utils"]

" get folder of this file, handles symlinks
" http://stackoverflow.com/a/18734557
let g:config_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Load vundle
exec "source " . g:config_path . "/vundle.vim"

" Load Core configuration
exec "source " . g:config_path . "/core.vim"

for dir in s:m_paths
    for f in split(globpath(g:config_path . dir, '*.vim'), '\n')
        exec "source " . f
    endfor
endfor

