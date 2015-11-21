" http://vi.stackexchange.com/questions/3177/use-single-ftplugin-for-more-than-one-filetype

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
" Behaves just like C
runtime! after/ftplugin/c.vim after/ftplugin/c_*.vim after/ftplugin/c/*.vim
