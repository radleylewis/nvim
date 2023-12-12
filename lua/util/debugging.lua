local M = {}

local node_pick_process = {
	-- attach to process
	type = "pwa-node",
	request = "attach",
	name = "Attach To Process (pwa-node)",
	cwd = vim.fn.getcwd(),
	processId = require("dap.utils").pick_process,
	skipFiles = { "<node_internals>/**" },
}

local divider_for_launch_configs = {
	-- Divider for the launch.json derived configs
	name = "----- ↓ launch.json configs ↓ -----",
}

M.icons = {
	Stopped = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
	Breakpoint = " ",
	BreakpointCondition = " ",
	BreakpointRejected = { " ", "DiagnosticError" },
	LogPoint = ".>",
}

M.typescript = function()
	return {
		{
			-- launch single file
			name = "[TS] Launch Single File (pwa-node)",
			runtimeExecutable = "ts-node",
			type = "pwa-node",
			request = "launch",
			cwd = vim.fn.getcwd(),
			args = { "${file}" },
			sourceMaps = true,
			skipFiles = { "<node_internals>/**", "node_modules/**" },
			resolveSourceMapLocations = {
				"${workspaceFolder}/**",
				"!**/node_modules/**",
			},
		},
		node_pick_process,
		divider_for_launch_configs,
	}
end

M.javascript = function()
	return {
		{
			-- launch single file
			name = "[JS] Launch Single File (pwa-node)",
			runtimeExecutable = "node",
			type = "pwa-node",
			request = "launch",
			cwd = vim.fn.getcwd(),
			args = { "${file}" },
			sourceMaps = true,
			skipFiles = { "<node_internals>/**", "node_modules/**" },
			resolveSourceMapLocations = {
				"${workspaceFolder}/**",
				"!**/node_modules/**",
			},
		},
		node_pick_process,
		divider_for_launch_configs,
	}
end

M.keys = function()
	return {
		"<leader>dO",
		function()
			require("dap").step_out()
		end,
		desc = "Step Out",
	}, {
		"<leader>do",
		function()
			require("dap").step_over()
		end,
		desc = "Step Over",
	}, {
		"<leader>da",
		function()
			if vim.fn.filereadable(".vscode/launch.json") then
				local dap_vscode = require("dap.ext.vscode")
				dap_vscode.load_launchjs(nil, {
					["pwa-node"] = js_based_languages,
					["chrome"] = js_based_languages,
					["pwa-chrome"] = js_based_languages,
				})
			end
			require("dap").continue()
		end,
		desc = "Run with Args",
	}
end

return M
