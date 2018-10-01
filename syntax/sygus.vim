if exists("b:current_syntax")
  finish
endif

runtime! syntax/smt2.vim

unlet b:current_syntax
let b:current_syntax = "sygus"

syntax keyword sygusKeyword
	\ constraint
	\ check-synth
	\ synth-fun


highlight link sygusKeyword Special

