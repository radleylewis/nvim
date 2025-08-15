-- ================================================================================================
-- TITLE : codeium/windsurf
-- LINKS :
--   > github : https://github.com/Exafunction/windsurf.nvim
-- ABOUT : Native Windsurf plugin for Neovim.
-- ================================================================================================

return {
	"Exafunction/windsurf.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("codeium").setup({})
	end,
}
