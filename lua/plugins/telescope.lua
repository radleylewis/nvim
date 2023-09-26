local m = require("util").lazy_map

local config = function()
	local telescope = require('telescope')
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
			},
			live_grep = {
				theme = "dropdown",
				previewer = false,
			},
		},
	})
	end


return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.3',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = config,
		keys = {
		m("<leader>fk", [[Telescope keymaps]]),
		m("<leader>fh", [[Telescope help_tags]]),
		m("<leader>ff", [[Telescope find_files]]),
		m("<leader>fa", [[TelescopeFindFilesNoIgnore]]),
		m("<leader>fg", [[Telescope live_grep]]),
		m("<leader>fb", [[Telescope buffers]]),
	},
}
