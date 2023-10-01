local get_cmd_string = function(cmd)
	return [[<cmd>]] .. cmd .. [[<CR>]]
end

local M = {}

M.mapkeys = function(shortcut, cmd, modes)
	modes = modes or { "n" }
	cmd = get_cmd_string(cmd)
	return {
		shortcut,
		cmd,
		modes,
	}
end

return M
