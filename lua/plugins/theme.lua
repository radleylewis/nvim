return {
	{
		"xiyaowong/nvim-transparent",
		lazy = false,
    priority = 999
	},
	{
    "EdenEast/nightfox.nvim",
    config = function()
      vim.cmd('colorscheme carbonfox')
    end,
  }
}
