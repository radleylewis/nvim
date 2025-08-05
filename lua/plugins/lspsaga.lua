return {
	"glepnir/lspsaga.nvim",
	lazy = false,
	opts = {
		-- keybinds for navigation in lspsaga window
		move_in_saga = {
			prev = "<C-k>",
			next = "<C-j>",
		},
		-- use enter to open file with finder
		finder_action_keys = {
			open = "<CR>",
		},
		-- use enter to open file with definition preview
		definition_action_keys = {
			edit = "<CR>",
		},
	},
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
}
