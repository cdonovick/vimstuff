" XML
" =============================================================================
" Pretty print XML file
" http://vim.wikia.com/wiki/Format_your_xml_document_using_xmllint
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
