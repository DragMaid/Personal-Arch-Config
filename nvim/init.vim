call plug#begin('~/.vim/plugged')
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Side navigation bar
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

" Language server
Plug 'neovim/nvim-lspconfig'

" Auto commenter
Plug 'preservim/nerdcommenter'

call plug#end()

" Config files load
" source $HOME/.config/nvim/keys/ibus-handler.vim
source $HOME/.config/nvim/keys/which-key-config.vim
source $HOME/.config/nvim/keys/neoshort-config.vim
source $HOME/.config/nvim/keys/startify-config.vim
source $HOME/.config/nvim/keys/floaterm-config.vim
source $HOME/.config/nvim/keys/lualine-config.vim
source $HOME/.config/nvim/keys/ranger-nvim-config.vim
source $HOME/.config/nvim/keys/neovim-config.vim
source $HOME/.config/nvim/keys/flutter-config.vim
