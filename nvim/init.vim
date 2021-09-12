call plug#begin('~/.vim/plugged')

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Side navigation bar
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" Flutter-dev environment
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'

" Status line
Plug 'hoob3rt/lualine.nvim'

" Colorscheme
Plug 'morhetz/gruvbox'

" Indent display
Plug 'Yggdroot/indentLine' 

" File Search-engine
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Startup menu
Plug 'mhinz/vim-startify'

" Intergrated terminal
Plug 'voldikss/vim-floaterm'

" Plugins menu
Plug 'liuchengxu/vim-which-key'

" Intergrated File-explorer
Plug 'kevinhwang91/rnvimr'

call plug#end()

" Config files load
source $HOME/.config/nvim/keys/which-key-config.vim
source $HOME/.config/nvim/keys/neoshort-config.vim
source $HOME/.config/nvim/keys/startify-config.vim
source $HOME/.config/nvim/keys/nerdtree-config.vim
source $HOME/.config/nvim/keys/floaterm-config.vim
source $HOME/.config/nvim/keys/lualine-config.vim
source $HOME/.config/nvim/keys/flutter-config.vim
source $HOME/.config/nvim/keys/ranger-nvim-config.vim
source $HOME/.config/nvim/keys/indentline-config.vim
source $HOME/.config/nvim/keys/neovim-config.vim
function! IBusOn()
	let l:current_engine = system('ibus engine')
	" nếu engine được set trong normal mode thì
	" lúc vào insert mode duùn luôn engine đó
	if l:current_engine !~? 'xkb🇺🇸:eng'
		let g:ibus_prev_engine = l:current_engine
	endif
	" Khôi phục lại engine
	silent! execute '!ibus engine ' . g:ibus_prev_engine
endfunction
function! IBusOff()
	" Lưu engine hiện tại
	let g:ibus_prev_engine = system('ibus engine')
	" Chuyển sang engine tiếng Anh
	" Nếu bạn thấy cái cờ ở đây
	" khả năng là font của bạn đang render emoji lung tung...
	" xkb : us :: eng (không có dấu cách)
	silent! execute '!ibus engine xkb🇺🇸:eng'
endfunction
augroup IBusHandler
	" Khôi phục ibus engine khi tìm kiếm
	autocmd CmdLineEnter [/?] silent call IBusOn()
	autocmd CmdLineLeave [/?] silent call IBusOff()
	autocmd CmdLineEnter \? silent call IBusOn()
	autocmd CmdLineLeave \? silent call IBusOff()
	" Khôi phục ibus engine khi vào insert mode
	autocmd InsertEnter * silent call IBusOn()
	" Tắt ibus engine khi vào normal mode
	autocmd InsertLeave * silent call IBusOff()
augroup END
