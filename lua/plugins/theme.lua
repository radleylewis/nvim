-- ================================================================================================
-- TITLE : melange-nvim
-- ABOUT : A subtle, warm colorscheme for Neovim inspired by Sublime Text's Melange theme.
-- LINKS :
--   > github : https://github.com/savq/melange-nvim
-- ================================================================================================

return {
	-- "savq/melange-nvim",
	"catppuccin/nvim",
	name = "theme",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme catppuccin")
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			float = {
				transparent = false, -- enable transparent floating windows
				solid = false, -- use solid styling for floating windows, see |winborder|
			},
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				notify = true,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
			-- Catppuccin Mocha example
			require("notify").setup({
				background_colour = "#1e1e2e",
			}),
		})
	end,
}
