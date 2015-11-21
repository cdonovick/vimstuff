" http://vi.stackexchange.com/questions/3177/use-single-ftplugin-for-more-than-one-filetype
" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Behaves just like C
runtime! ftplugin/c.vim ftplugin/c_*.vim ftplugin/c/*.vim
