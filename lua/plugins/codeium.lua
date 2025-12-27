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
		if vim.loop.os_uname().sysname ~= "Linux" then
			-- NOTE: do not start on linux
			require("codeium").setup({})
		end
	end,
}
