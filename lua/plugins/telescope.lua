local mapkeys = require("util").mapkeys

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = false,
				hidden = true,
			},
			live_grep = {
				theme = "dropdown",
				previewer = false,
			},
			buffers = {
				theme = "dropdown",
			},
		},
	})
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
	keys = {
		mapkeys([[<leader>fk]], [[Telescope keymaps]]),
		mapkeys([[<leader>fh]], [[Telescope help_tags]]),
		mapkeys([[<leader>ff]], [[Telescope find_files]]),
		mapkeys([[<leader>fg]], [[Telescope live_grep]]),
		mapkeys([[<leader>fb]], [[Telescope buffers]]),
	},
}
