local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

-- General Dependency
Plug("nvim-lua/plenary.nvim")

-- Colorscheme & Appearance
Plug("navarasu/onedark.nvim")
Plug("nvim-lualine/lualine.nvim")
Plug("nvim-tree/nvim-web-devicons")

-- File Explorer
Plug("nvim-tree/nvim-tree.lua")
Plug("nvim-telescope/telescope.nvim")

-- Language Support
Plug("neovim/nvim-lspconfig")
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")
Plug("glepnir/lspsaga.nvim")
Plug("jose-elias-alvarez/typescript.nvim")
Plug("onsails/lspkind.nvim")
Plug("jose-elias-alvarez/null-ls.nvim")
Plug("jayp0521/mason-null-ls.nvim")
Plug("L3MON4D3/LuaSnip")
Plug("saadparwaiz1/cmp_luasnip")
Plug("rafamadriz/friendly-snippets")
Plug("windwp/nvim-autopairs")

-- Comments
Plug("numToStr/Comment.nvim")

-- Window Management
Plug("szw/vim-maximizer")

vim.call("plug#end")
