set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nowrap
set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=10
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=100
set signcolumn=yes
set number
set cmdheight=2
set updatetime=50
set shortmess+=c
set encoding=UTF-8
set mouse+=a

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'

Plug 'navarasu/onedark.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'glepnir/lspsaga.nvim'
Plug 'jose-elias-alvarez/typescript.nvim'
Plug 'onsails/lspkind.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jayp0521/mason-null-ls.nvim'

call plug#end()

let mapleader = " "

luafile ~/.config/nvim/plugins/lsp/mason.lua
luafile ~/.config/nvim/plugins/lsp/servers.lua
luafile ~/.config/nvim/plugins/lsp/saga.lua
luafile ~/.config/nvim/plugins/lsp/nullls.lua
luafile ~/.config/nvim/plugins/nvim-cmp-config.lua

colorscheme onedark
