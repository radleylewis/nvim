return {
	"mfussenegger/nvim-dap",
	config = function()
		local configs = require("util.debugging")
		local dap = require("dap")
		local dapui = require("dapui")

		-- set custom icons
		for name, sign in pairs(configs.icons) do
			sign = type(sign) == "table" and sign or { sign }
			vim.fn.sign_define(
				"Dap" .. name,
				{ text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
			)
		end

		-- setup dap
		dapui.setup()

		-- add event listeners
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end

		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end

		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end

		-- configure debug adapter protocols
		dap.configurations.typescript = configs.typescript()
		dap.configurations.javascript = configs.javascript()
	end,
	dependencies = "rcarriga/nvim-dap-ui",
}
