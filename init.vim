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
Plug 'numToStr/Comment.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-lua/plenary.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons' 
Plug 'nvim-tree/nvim-tree.lua'
Plug 'romgrk/barbar.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
call plug#end()

luafile ~/.config/nvim/plugins/cmp-config.lua
luafile ~/.config/nvim/plugins/cmt-config.lua
luafile ~/.config/nvim/plugins/null-ls.lua
luafile ~/.config/nvim/plugins/keys-config.lua
luafile ~/.config/nvim/plugins/telescope-config.lua
luafile ~/.config/nvim/plugins/gitsigns-config.lua
luafile ~/.config/nvim/plugins/lualine-config.lua
luafile ~/.config/nvim/plugins/autopairs-config.lua
luafile ~/.config/nvim/plugins/terminal-config.lua
luafile ~/.config/nvim/plugins/nvimtree-config.lua

colorscheme onedark

highlight Normal guibg=none

let mapleader = ' '

" Line Commenting 
nmap <C-_> gcc
vmap <C-_> gc

" Code Formatting
nnoremap <Leader>i :lua vim.lsp.buf.format(nil, 10000)<CR>

" Directory 
nnoremap <Leader>n :NvimTreeFocus<CR>
nnoremap <Leader>m :NvimTreeToggle<CR>
nnoremap <Leader>c :NvimTreeFindFile<CR>

" Terminal
autocmd TermEnter term://*toggleterm#* tnoremap <silent><C-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><C-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><C-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" Buffers
nnoremap <silent> <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent> <A-.> <Cmd>BufferNext<CR>
nnoremap <silent> <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent> <A->> <Cmd>BufferMoveNext<CR>
nnoremap <silent> <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent> <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent> <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent> <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent> <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent> <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent> <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent> <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent> <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent> <A-0> <Cmd>BufferLast<CR>
nnoremap <silent> <A-p> <Cmd>BufferPin<CR>
nnoremap <silent> <A-c> <Cmd>BufferClose<CR>
nnoremap <silent> <C-p> <Cmd>BufferPick<CR>
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

