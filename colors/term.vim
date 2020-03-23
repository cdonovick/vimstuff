" True converted to term colors
hi clear
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

hi clear

set t_Co=256

"Syntax
hi Normal       ctermfg=250  ctermbg=233  term=NONE              cterm=NONE
hi Comment      ctermfg=76   ctermbg=NONE term=NONE              cterm=NONE
hi Constant     ctermfg=208  ctermbg=NONE term=NONE              cterm=NONE
hi String       ctermfg=209  ctermbg=NONE term=NONE              cterm=NONE
hi Identifier   ctermfg=255  ctermbg=NONE term=NONE              cterm=NONE
hi Function     ctermfg=141  ctermbg=NONE term=NONE              cterm=NONE
hi Statement    ctermfg=110  ctermbg=NONE term=NONE              cterm=NONE
hi PreProc      ctermfg=39   ctermbg=NONE term=NONE              cterm=NONE
hi Type         ctermfg=81   ctermbg=NONE term=NONE              cterm=NONE
hi Special      ctermfg=213  ctermbg=NONE term=NONE              cterm=NONE
hi Error        ctermfg=NONE ctermbg=196  term=reverse           cterm=reverse

"Vim
hi LineNr       ctermfg=240  ctermbg=NONE term=NONE              cterm=NONE
hi CursorLine   ctermfg=NONE ctermbg=NONE term=NONE              cterm=NONE
hi CursorLineNR ctermfg=94   ctermbg=NONE term=NONE              cterm=NONE
hi Search       ctermfg=NONE ctermbg=237  term=NONE              cterm=NONE
hi Visual       ctermfg=NONE ctermbg=237  term=NONE              cterm=NONE
hi TabLine      ctermfg=250  ctermbg=237  term=NONE              cterm=NONE
hi TabLineFill  ctermfg=250  ctermbg=235  term=NONE              cterm=NONE
hi TabLineSel   ctermfg=250  ctermbg=237  term=reverse           cterm=reverse

hi SpellBad     ctermfg=NONE ctermbg=196  term=reverse,undercurl cterm=reverse,undercurl
hi Pmenu        ctermfg=NONE ctermbg=235  term=NONE              cterm=NONE
hi PmenuSel     ctermfg=215  ctermbg=235  term=NONE              cterm=NONE

" Tab indecators
hi WhiteSpace  ctermfg=240  ctermbg=NONE term=NONE              cterm=NONE

" Trailing Whitespace
hi Trailing    ctermfg=NONE ctermbg=240   term=NONE             cterm=NONE

let g:colors_name = "term"
