return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		-- vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=None]])
		require("nvim-tree").setup({
			filters = {
				dotfiles = false,
			},
		})
	end,
}
