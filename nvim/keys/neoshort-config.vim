function! Setgruvbox()
  colorscheme gruvbox
  hi Normal guibg=NONE ctermbg=NONE
endfunction
" Navigating between buffers
nnoremap <M-q> <C-w>w

nnoremap <tab>   :bn<CR>
nnoremap <S-tab> :bN<CR>

nnoremap ll :call Setgruvbox()  <CR>
nnoremap lL :colorscheme default<CR>

nnoremap F :Files  <CR>
nnoremap Q :Rg     <CR>
nnoremap B :Buffers<CR>
