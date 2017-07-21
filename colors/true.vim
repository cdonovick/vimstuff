" 24bit color scheme
set termguicolors

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name = "true"

hi clear
hi Normal guifg=#b6bbaa guibg=#101010
hi SpellBad guifg=#e0f0f0 guibg=#f01010
hi Constant guifg=#ff9928
hi String guifg=#ff7c48
hi Statement guifg=#8cc0d6
hi PreProc guifg=#00c6ff
hi Comment guifg=#52d31b
hi Type guifg=#00dffe
hi Special guifg=#f194ff
hi Function guifg=#a898ff
hi LineNr guifg=#54594a
hi Search guifg=NONE guibg=#222222
hi Visual guifg=NONE guibg=#343434
