--  Useful Functions

vim.api.nvim_set_option("completefunc", "luacomplete#Complete")

-- Removes the Head Changes in a git diff
function GitDiffRemove()
	vim.api.nvim_command([[%s/<<<<<<< HEAD\n\_.\{-}\n=======\n//]])
end
