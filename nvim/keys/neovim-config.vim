" Setup language server
lua require'lspconfig'.pyright.setup{}

" Set relative number
let g:indentLine_enabled = 1
set clipboard+=unnamedplus
set relativenumber

" Set gruvbox theme transparency
colorscheme gruvbox
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

" Pure vim configs
let g:python_recommended_style=0
set smartindent
set autoindent
set number 

" Indentation settings
set tabstop=4
set softtabstop=0 noexpandtab 
set shiftwidth=4
set conceallevel=1
let g:indentLine_conceallevel=1
set list lcs=tab:\|\ 
let g:indentLine_setColors = 0
let g:indentLine_bgcolor_gui = '#2B2B2B'
" let g:indentLine_char = '|'
