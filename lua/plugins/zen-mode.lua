-- ================================================================================================
-- TITLE : zen-mode
-- ABOUT : Distraction-free coding for Neovim
-- LINKS :
--   > github : https://github.com/folke/zen-mode.nvim
-- DEPENDENCIES/INTEGRATIONS:
--   > twilight.nvim: https://github.com/folke/twilight.nvim
-- ================================================================================================

return {
	"folke/zen-mode.nvim",
	dependencies = {
		"folke/twilight.nvim",
	},

	keys = {
		{
			"<leader>z",
			function()
				require("zen-mode").toggle()
			end,
			desc = "Toggle Zen Mode",
		},
	},

	opts = {
		window = {
			backdrop = 1,
			width = 0.60,
		},

		plugins = {
			options = { enabled = true, ruler = false, showcmd = false },
			tmux = { enabled = false },
			kitty = { enabled = false, font = "+2" },
		},

		on_open = function()
			pcall(function()
				require("twilight").enable()
			end)
		end,

		on_close = function()
			pcall(function()
				require("twilight").disable()
			end)
		end,
	},
}
