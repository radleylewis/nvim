return {
	"rcarriga/nvim-dap-ui",
	config = function()
		local dap = require("dap")
		local dui = require("dapui")
		dui.setup()
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dui.close()
		end
	end,
	dependencies = {
		"mfussenegger/nvim-dap",
	},
}
