function! FindConfig(p, name)
	let l:ep=resolve(expand(a:p))
	let l:c=ep . '/' . a:name
	if filereadable(l:c)
		return l:c
	elseif l:ep == "/" || l:ep == "" || l:ep == resolve(expand(a:p . ":h")) || l:ep == resolve(expand("~"))
		return ""
	else
		return FindConfig(a:p . ":h", a:name)
	endif
endfunction

function! GetEnviroment(name)
	let l:c=FindConfig("%:p", a:name)
	if l:c != "" && filereadable(l:c)
		exec "source " . l:c
	endif
endfunction

if exists("s:run_once")
	finish
endif

let s:run_once = 1
call GetEnviroment('.local.vim')

"https://stackoverflow.com/questions/9464844/how-to-get-group-name-of-highlighting-under-cursor-in-vim
function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

function! SynGroup()
	let l:s = synID(line('.'), col('.'), 1)
	echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfunction


"function! CaseSub(expr, pat, sub, flags)
"	let l:lsub=tolower(a:sub)
"	let l:usub=toupper(a:sub)
"	let l:sub='\= strpart(submatch(0), 0, 1) == tolower(strpart(submatch(0), 0, 1)) ? "' . l:lsub . '" : "' . l:usub . '"'
"	let l:pat='\c' . a:pat
"	return substitute(a:expr, l:pat, l:sub, a:flags)
"endfunction
"
"function! DoCaseSub(expr, search_string)
"	let l:sub_pat = '([^/\\]+)'
"	let l:pat='\v/' . l:sub_pat . '/' . sub_pat . '/' . '(%(g?c?)|%(cg))'
"	if match(a:search_string, l:pat) != 0
"		return 1
"	endif
"
"	let l:p = substitute(a:search_string, l:pat, '\1', '')
"	let l:s = substitute(a:search_string, l:pat, '\2', '')
"	let l:f = substitute(a:search_string, l:pat, '\3', '')
"	return CaseSub(a:expr, l:p, l:s, l:f)
"endfunction



" auto tab
" autocmd! BufRead,BufNewFile * nested
"            \ if &buftype != "nofile" && &buftype != "help" |
"            \   tab sball |
"            \ endif
