local config = function()
	require("lualine").setup({
		options = {
			theme = "catppuccin",
			globalstatus = true,
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
