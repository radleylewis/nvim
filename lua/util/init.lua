local M = {}

M.get_config_modules = function(exclude_map)
	exclude_map = exclude_map or {
		"lazy",
		"init",
	}
	local files = {}
	for _, file in ipairs(vim.fn.glob(vim.fn.stdpath("config") .. "/lua/config/*.lua", true, true)) do
		table.insert(files, vim.fn.fnamemodify(file, ":t:r"))
	end
	files = vim.tbl_filter(function(file)
		for _, pattern in ipairs(exclude_map) do
			if file:match(pattern) then
				return false
			end
		end
		return true
	end, files)
	return files
end

M.load_configs = function()
	for _, file in ipairs(M.get_config_modules()) do
		require("config." .. file)
	end
	require("config.lazy")
end

M.cmd_string = function(cmd_arg)
	return [[<cmd>]] .. cmd_arg .. [[<cr>]]
end

M.str_to_tbl = function(v)
	if type(v) == "string" then
		v = { v }
	end
	return v
end

M.lazy_map = function(lhs, rhs, modes)
	modes = M.str_to_tbl(modes) or { "n" }
	return {
		lhs,
		M.cmd_string(rhs),
		mode = modes,
	}
end

return M
