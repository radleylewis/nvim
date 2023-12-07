local dap = require("dap")

dap.adapters["pwa-node"] = {
	type = "server",
	host = "127.0.0.1",
	port = 3000,
	executable = {
		command = "js-debug-adapter",
	},
}

for _, language in ipairs({ "typescript", "javascript" }) do
	dap.configurations[language] = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			program = "${file}",
			cwd = "${workspaceFolder}",
			sourceMaps = true,
			runtimeExecutable = "node",
		},
	}
end
