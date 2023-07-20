" Debug options
let g:hot_reload_on_save = 0
let g:dart_format_on_save = 1

" Key mappings
nnoremap dv :CocCommand flutter.dev.openDevLog<CR>
nnoremap Em :CocCommand flutter.emulators     <CR>
nnoremap ge :CocCommand flutter.pub.get       <CR>
nnoremap Hr :CocCommand flutter.dev.hotReload <CR>
nnoremap HR :CocCommand flutter.dev.hotRestart<CR>
nnoremap qQ :CocCommand flutter.dev.quit      <CR>
nnoremap rR :CocCommand flutter.run           <CR>
