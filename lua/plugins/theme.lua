-- ================================================================================================
-- TITLE : melange-nvim
-- ABOUT : A subtle, warm colorscheme for Neovim inspired by Sublime Text's Melange theme.
-- LINKS :
--   > github : https://github.com/savq/melange-nvim
-- ================================================================================================

return {
	-- "savq/melange-nvim",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	vim.cmd("colorscheme melange")
	-- end,
	{
		"xiyaowong/nvim-transparent",
		lazy = false,
		priority = 999,
	},

	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 999,
		config = function()
			-- load duskfox palette
			local palette = require("nightfox.palette").load("duskfox")

			require("nightfox").setup({
				options = {
					transparent = true,
				},
				groups = {
					duskfox = {
						Visual = { bg = palette.bg1 },
					},
				},
			})

			vim.cmd("colorscheme duskfox")
		end,
	},
}
