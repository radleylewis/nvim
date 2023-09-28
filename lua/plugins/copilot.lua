return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	dependencies = "zbirenbaum/copilot-cmp",
	config = function()
		require("copilot").setup(require("copilot").setup({
			panel = {
				enabled = true,
				auto_refresh = false,
				keymap = {
					jump_prev = "[[",
					jump_next = "]]",
					accept = "<CR>",
					refresh = "gr",
					open = "<leader>co",
				},
				layout = {
					position = "right", -- bottom | top | left | right
					ratio = 0.4,
				},
			},
			suggestion = {
				enabled = true,
				auto_trigger = false,
				debounce = 75,
				keymap = {
					accept = "<leader>ca",
					accept_word = false,
					accept_line = false,
					next = "<leader>cn",
					prev = "<leader>cp",
					dismiss = "<leader>cx",
				},
			},
			filetypes = {
				yaml = false,
				markdown = false,
				help = false,
				gitcommit = false,
				gitrebase = false,
				hgcommit = false,
				svn = false,
				cvs = false,
				["."] = false,
			},
			copilot_node_command = "node", -- Node.js version must be > 16.x
			server_opts_overrides = {},
		}))
		require("copilot_cmp").setup({
			formatters = {
				insert_text = require("copilot_cmp.format").remove_existing,
			},
		})
	end,
}
