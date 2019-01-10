if exists("s:run_once")
	finish
endif

let s:run_once = 1
call GetEnviroment('.after.vim')
