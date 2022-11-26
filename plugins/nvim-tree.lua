-- Advised as per docs
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
