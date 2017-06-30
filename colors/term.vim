" True converted to term colors
set t_Co=256

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name = "true"

hi clear
hi Normal ctermfg=250 ctermbg=233
hi SpellBad ctermfg=255 ctermbg=196
hi Constant ctermfg=208
hi String ctermfg=209
hi Statement ctermfg=110
hi PreProc ctermfg=39
hi Comment ctermfg=76
hi Type ctermfg=81
hi Special ctermfg=213
hi Function ctermfg=141
hi LineNr ctermfg=240
hi Search ctermfg=none ctermbg=235
hi Visual ctermfg=none ctermbg=237
