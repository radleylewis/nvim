local mapvimkey = require("util.keymapper").mapvimkey

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
				previewer = true,
				hidden = true,
			},
			live_grep = {
				theme = "dropdown",
				previewer = true,
			},
			buffers = {
				theme = "dropdown",
				previewer = true,
			},
		},
	})
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
	keys = {
		mapvimkey("<leader>fk", "Telescope keymaps", "Show Keymaps"),
		mapvimkey("<leader>fh", "Telescope help_tags", "Show Help Tags"),
		mapvimkey("<leader>ff", "Telescope find_files", "Find Files"),
		mapvimkey("<leader>fg", "Telescope live_grep", "Live Grep"),
		mapvimkey("<leader>fb", "Telescope buffers", "Find Buffers"),
	},
}
