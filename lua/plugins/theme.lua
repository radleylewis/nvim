-- ================================================================================================
-- TITLE : themer.lua
-- ABOUT : A subtle, warm colorscheme for Neovim inspired from forost
-- LINKS :
--   > github : https://github.com/ribru17/bamboo.nvim
-- ================================================================================================


return {
	"ribru17/bamboo.nvim",
  name = "bamboo",
	lazy = false,
	priority = 1000,
	config = function()
		require("bamboo").setup({
        style = 'multiplex'
    })
		require("bamboo").load()
	end,
}
