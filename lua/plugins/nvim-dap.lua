local get_language_configuration = function()
	return {
		type = "pwa-node",
		request = "launch",
		name = "Launch",
		program = "${file}",
		cwd = "${workspaceFolder}",
		runtimeExecutable = "node",
	}
end

local config = function()
	local dap = require("dap")
	dap.adapters["pwa-node"] = {
		type = "server",
		host = "127.0.0.1",
		port = 8123,
		executable = {
			command = "js-debug-adapter",
		},
	}

	dap.congurations.javascript = get_language_configuration()
	dap.congurations.typescript = get_language_configuration()
end

return {
	"mfussenegger/nvim-dap",
	config = config,
}
