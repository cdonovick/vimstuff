function! FindConfig(p)
    let l:ep=resolve(expand(a:p))
    let l:c=ep . "/.local.vim"
    if filereadable(l:c)
        return l:c
    elseif l:ep == "/" || l:ep == "" || l:ep == resolve(expand(a:p . ":h")) || l:ep == resolve(expand("~"))
        return ""
    else
        return FindConfig(a:p . ":h")
    endif
endfunction

function! GetEnviroment()
    let l:c=FindConfig("%:p")
    if l:c != "" && filereadable(l:c)
        exec "source " . l:c
    endif
endfunction


autocmd! BufRead,BufNewFile * call GetEnviroment()

" auto tab
" autocmd! BufRead,BufNewFile * nested
"            \ if &buftype != "nofile" && &buftype != "help" |
"            \   tab sball |
"            \ endif
