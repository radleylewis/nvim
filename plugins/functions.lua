--  Useful Functions

-- Removes the Head Changes in a git diff
function RemoveGitConflictMarkers(branch)
	vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.fn.getline(1, "$"))
	vim.api.nvim_command(
		[[%s/\v(<<<<<<< HEAD\n(.|\n)*\n=======\n(.|\n)*\n\|=======\n(.|\n)*\n>>>>>>> ]] .. branch .. [[\n//g]]
	)
end
