return {
	{
		"xiyaowong/nvim-transparent",
		lazy = false,
		priority = 999,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local palette = require("nightfox.palette").load("carbonfox")
			require("nightfox").setup({
				options = { transparent = true },
				groups = {
					all = {
						TelescopeBorder = { fg = palette.fg3 },
					},
					nightfox = {
						Visual = { bg = palette.bg1 },
					},
				},
			})
			vim.cmd.colorscheme("carbonfox")
		end,
	},
}
