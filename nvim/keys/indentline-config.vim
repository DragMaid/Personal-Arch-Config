" Disable indent so for startify screen
let g:indentLine_enabled = 0

" Re-enable indent after a new buffer has been added to the list
autocmd BufAdd * :let g:indentLine_enabled = 1
