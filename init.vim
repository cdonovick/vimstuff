let s:config_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:python3_host_prog = s:config_path . '/env3/bin/python'
let g:python_host_prog = s:config_path . '/env2/bin/python'
exec "source " . s:config_path . "/vimrc.vim"
