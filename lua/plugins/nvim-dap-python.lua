return {
	"mfussenegger/nvim-dap-python",
	ft = "python", -- filetype
	config = function()
		require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
	end,
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},
}
