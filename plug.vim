if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

" Темы 
Plug 'morhetz/gruvbox'

Plug 'jiangmiao/auto-pairs'
Plug 'lyokha/vim-xkbswitch'
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-buftabline'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

if has("nvim")
    Plug 'nvim-lua/plenary.nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'voldikss/vim-floaterm'
    Plug 'liuchengxu/vim-which-key'
endif

call plug#end()
