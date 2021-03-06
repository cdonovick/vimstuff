" 24bit color scheme
hi clear
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

hi clear

set termguicolors

"Syntax
hi Normal       guifg=#b6bbaa guibg=#101010 term=NONE              cterm=NONE              gui=NONE
hi Comment      guifg=#52d31b guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi Constant     guifg=#ff9928 guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi String       guifg=#ff7c48 guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi Identifier   guifg=#eeedef guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi Function     guifg=#a898ff guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi Statement    guifg=#8cc0d6 guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi PreProc      guifg=#00c6ff guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi Type         guifg=#00dffe guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi Special      guifg=#f194ff guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi Error        guifg=NONE    guibg=#f01010 term=reverse           cterm=reverse           gui=reverse

"Vim
hi LineNr       guifg=#54594a guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi CursorLine   guifg=NONE    guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi CursorLineNR guifg=#8c4300 guibg=NONE    term=NONE              cterm=NONE              gui=NONE
hi Search       guifg=NONE    guibg=#343434 term=NONE              cterm=NONE              gui=NONE
hi Visual       guifg=NONE    guibg=#343434 term=NONE              cterm=NONE              gui=NONE
hi TabLine      guifg=#b6bbaa guibg=#343434 term=NONE              cterm=NONE              gui=NONE
hi TabLineFill  guifg=#b6bbaa guibg=#222222 term=NONE              cterm=NONE              gui=NONE
hi TabLineSel   guifg=#b6bbaa guibg=#343434 term=reverse           cterm=reverse           gui=reverse

hi SpellBad     guifg=NONE    guibg=#f01010 term=undercurl,reverse cterm=undercurl,reverse gui=undercurl,reverse
hi Pmenu        guifg=NONE    guibg=#222222 term=NONE              cterm=NONE              gui=NONE
hi PmenuSel     guifg=#fea358 guibg=#222222 term=NONE              cterm=NONE              gui=NONE

" Tab indecators
hi WhiteSpace   guifg=#54594a guibg=NONE    term=NONE              cterm=NONE              gui=NONE

" Trailing Whitespace
hi Trailing     guifg=NONE    guibg=#54594a term=NONE              cterm=NONE              gui=NONE

let g:colors_name = "true"
