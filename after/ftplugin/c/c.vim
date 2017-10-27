" http://stackoverflow.com/questions/23496243/autocommand-for-new-file-of-specific-filetype
if !exists("s:run_once")
	if filereadable(expand('%'))
		" BufRead
	elseif expand('%:e') =~ "\\vc|cc|C|cpp|cxx"
		call append(0, NewCPP())
	elseif expand('%:e') =~ "\\vh|hh|hpp|hxx"
		call append(0, NewH())
	endif
	let s:run_once = ""
endif
