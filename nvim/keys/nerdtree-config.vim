" Don't let Nerdtree replace ranger
let g:NERDTreeHijackNetrw=0

" Automatically closing Nerdtree when no other tabs are opened
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Preventing other widgets from closing Nerdtree
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Toggle Nerdtree key mapping
nnoremap bb :NERDTree<CR>
nnoremap bq :NERDTreeToggle<CR>
nnoremap bB :NERDTree<Bar>wincmd<Space>p<CR>
