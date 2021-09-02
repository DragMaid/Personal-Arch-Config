let g:ascii = [
	\ '     __                _           ',
	\ '  /\ \ \___  _____   _(_)_ __ ___  ',
	\ ' /  \/ / _ \/ _ \ \ / / |  _   _ \ ',
	\ '/ /\  /  __/ (_) \ V /| | | | | | |',
	\ '\_\ \/ \___|\___/ \_/ |_|_| |_| |_|',
	\ '				      ',
	\]

let g:startify_custom_header = startify#center(g:ascii) + startify#center(startify#fortune#boxed()) 

" Session configuration
let g:startify_session_autoload = 1
let g:startify_session_dir = '~/.config/nvim/sessions'
let g:startify_enable_special = 0
let g:startify_session_persistence = 1

" Quick access lists
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

" Custom config files
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'w': '~/.config/awesome/rc.lua' },
            \ { 'a': '~/.config/alacritty/alacritty.yml' },
            \ { 'r': '~/.config/ranger/rc.conf' },
            \ ]
