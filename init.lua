-- Initialize lazy.nvim
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	return
else
	lazy.setup()
end

-- General Dependency
lazy.load("nvim-lua/plenary.nvim")

-- Colorscheme & Appearance
lazy.load("EdenEast/nightfox.nvim")
lazy.load("navarasu/onedark.nvim")
lazy.load("nvim-lualine/lualine.nvim")
lazy.load("nvim-tree/nvim-web-devicons")

-- File Explorer
lazy.load("nvim-tree/nvim-tree.lua")
lazy.load("nvim-telescope/telescope.nvim")

-- Language Support
lazy.load("neovim/nvim-lspconfig")
lazy.load("williamboman/mason.nvim")
lazy.load("williamboman/mason-lspconfig.nvim")
lazy.load("hrsh7th/nvim-cmp")
lazy.load("hrsh7th/cmp-nvim-lsp")
lazy.load("hrsh7th/cmp-buffer")
lazy.load("hrsh7th/cmp-path")
lazy.load("glepnir/lspsaga.nvim")
lazy.load("jose-elias-alvarez/typescript.nvim")
lazy.load("onsails/lspkind.nvim")
lazy.load("jose-elias-alvarez/null-ls.nvim")
lazy.load("jayp0521/mason-null-ls.nvim")
lazy.load("L3MON4D3/LuaSnip")
lazy.load("saadparwaiz1/cmp_luasnip")
lazy.load("rafamadriz/friendly-snippets")
lazy.load("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
lazy.load("storyn26383/vim-vue")
lazy.load("windwp/nvim-autopairs")
lazy.load("windwp/nvim-ts-autotag")
lazy.load("simrat39/rust-tools.nvim")
lazy.load("rust-lang/rust.vim")
lazy.load("mfussenegger/nvim-dap")
lazy.load("github/copilot.vim")

-- Comments & Highlighting
lazy.load("numToStr/Comment.nvim")
lazy.load("RRethy/vim-illuminate")
lazy.load("machakann/vim-highlightedyank")

-- Window Management
lazy.load("szw/vim-maximizer")
lazy.load("christoomey/vim-tmux-navigator")
lazy.load("akinsho/toggleterm.nvim", { ["tag"] = "*" })

-- Git Integration
lazy.load("lewis6991/gitsigns.nvim")

-- Base Configuration Files
lazy.load("settings")
lazy.load("keymappings")

-- Custom lua functions
lazy.load("plugins/functions")

-- Import Plugins
lazy.load("plugins/colortheme")
lazy.load("plugins/comment")
lazy.load("plugins/nvim-cmp-config")
lazy.load("plugins/lualine")
lazy.load("plugins/nvim-tree")
lazy.load("plugins/nvim-treesitter")
lazy.load("plugins/nvim-autopairs")
lazy.load("plugins/gitsigns")
lazy.load("plugins/vim-illuminate")
lazy.load("plugins/lsp/nullls")
lazy.load("plugins/lsp/saga")
lazy.load("plugins/lsp/mason")
lazy.load("plugins/lsp/servers")
lazy.load("plugins/telescope")
lazy.load("plugins/toggleterm-nvim")

-- Neovim and NvimTree transparent background
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi NvimTreeNormal guibg=NONE")
