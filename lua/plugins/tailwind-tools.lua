-- ================================================================================================
-- TITLE : tailwind-tools
-- ABOUT : An unofficial Tailwind CSS integration and tooling for Neovim.
-- LINKS :
--   > github : https://github.com/luckasRanarison/tailwind-tools.nvim
-- ================================================================================================

return {
	"luckasRanarison/tailwind-tools.nvim",
	name = "tailwind-tools",
	build = ":UpdateRemotePlugins",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"neovim/nvim-lspconfig",
	},
	opts = {},
}
