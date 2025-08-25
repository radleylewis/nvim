return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"nvim-neotest/nvim-nio",
		{
			"mfussenegger/nvim-dap",
			config = function()
				local dap, dapui = require("dap"), require("dapui")
				dap.listeners.before.attach.dapui_config = function()
					dapui.open()
				end
				dap.listeners.before.launch.dapui_config = function()
					dapui.open()
				end
				dap.listeners.before.event_terminated.dapui_config = function()
					dapui.close()
				end
				dap.listeners.before.event_exited.dapui_config = function()
					dapui.close()
				end
			end,
		},
	},
	config = function()
		require("dapui").setup()
	end,
}
