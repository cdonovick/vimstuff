" True converted to term colors
set t_Co=256

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name = "term"
hi clear

hi Normal      ctermfg=250  ctermbg=233  term=NONE              cterm=NONE
hi SpellBad    ctermfg=NONE ctermbg=196  term=reverse,undercurl cterm=reverse,undercurl
hi Constant    ctermfg=208  ctermbg=NONE term=NONE              cterm=NONE
hi String      ctermfg=209  ctermbg=NONE term=NONE              cterm=NONE
hi Statement   ctermfg=110  ctermbg=NONE term=NONE              cterm=NONE
hi PreProc     ctermfg=39   ctermbg=NONE term=NONE              cterm=NONE
hi Comment     ctermfg=76   ctermbg=NONE term=NONE              cterm=NONE
hi Type        ctermfg=81   ctermbg=NONE term=NONE              cterm=NONE
hi Special     ctermfg=213  ctermbg=NONE term=NONE              cterm=NONE
hi Identifier  ctermfg=NONE guibg=NONE   term=NONE              cterm=NONE
hi Function    ctermfg=141  ctermbg=NONE term=NONE              cterm=NONE
hi LineNr      ctermfg=240  ctermbg=NONE term=NONE              cterm=NONE
hi Search      ctermfg=NONE ctermbg=237  term=NONE              cterm=NONE
hi Visual      ctermfg=NONE ctermbg=237  term=NONE              cterm=NONE
hi Error       ctermfg=NONE ctermbg=196  term=reverse           cterm=reverse
hi TabLine     ctermfg=250  ctermbg=237  term=NONE              cterm=NONE
hi TabLineFill ctermfg=250  ctermbg=235  term=NONE              cterm=NONE
hi TabLineSel  ctermfg=250  ctermbg=237  term=reverse           cterm=reverse
