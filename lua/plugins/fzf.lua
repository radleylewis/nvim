return {
	lazy = false,
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	opts = {},
	config = function()
		require("fzf-lua").setup({
			keymaps = {
				-- { "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer search" },

				{ "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
				-- { "<leader>fc", "<cmd>Telescope git_commits<cr>", desc = "Commits" },
				{ "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find All Files" },
				-- { "<C-p>", "<cmd>Telescope git_files<cr>", desc = "Git files" },
				-- { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help" },
				-- { "<leader>fj", "<cmd>Telescope command_history<cr>", desc = "History" },
				-- { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
				-- { "<leader>fl", "<cmd>Telescope lsp_references<cr>", desc = "Lsp References" },
				-- { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Old files" },
				{ "<leader>fg", "<cmd>FzfLua grep_project<cr>", desc = "Grep" },
				-- { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "Grep String" },
				-- { "<leader>ft", "<cmd>Telescope treesitter<cr>", desc = "Treesitter" },
			},
		})
	end,
}
