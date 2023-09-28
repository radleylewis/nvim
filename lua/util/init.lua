local M = {}

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
