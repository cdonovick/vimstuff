" C/C++
" =============================================================================
" Generate include gaurds
function! IncludeGuard(name)
    let mangle = substitute(toupper(a:name), '\.', '_', "g")
    let lines = []
    let lines +=  ["#ifndef " . mangle]
    let lines +=  ["#define " . mangle]
    let lines +=  [""]
    let lines +=  ["#endif"]
    return lines
endfunction

" generate main.cpp
function! MainCPP()
    let lines = []
    let lines += ["int main(int argc, char **argv) {"]
    let lines += [""]
    let lines += ["\treturn 0;"]
    let lines += ["}"]
    return lines
endfunction

" include .h file if it exists
function! IncludeH(header)
    if filereadable(a:header)
        return ["#include \"" . a:header . "\""]
    else
        return []
    endif
endfunction

" Templates for {.c,.cpp}
function! NewCPP()
    " File name no extension
    let name = expand("%:t:r")
    let lines = []
    
    " includes
    let lines += IncludeH("standard.h")
    let lines += IncludeH(name . ".h") 

    if len(lines)
        let lines += [""]
    endif

    " Auto main
    if tolower(name) == "main"
        let lines += MainCPP()
    endif

    return lines
endfunction

" Template for .h
function! NewH()
    let name = expand("%:t:r")
    let lines = []

    let lines +=  IncludeGuard(name . "_H" )
    
    if filereadable(name . ".cpp")
        inputsave()
        let i = input("Do you want to inlcude " . name . ".h in " . name . ".cpp? [y,n]")
        while !(i == 'y' || i == 'n')
            let i = input("please answer with y or n")
        endwhile
        if i == 'y'
            " Buffer file
        endif
        inputrestore()
    endif


    if filereadable(name . ".c")
        " should prompt to add the include to the c file
    endif

    return lines
endfunction

autocmd BufNewFile *.c,*.cpp call append(0, NewCPP())
autocmd BufNewFile *.h  call append(0, NewH())
