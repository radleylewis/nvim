-- LAZY.NVIM
-- NOTE: the below is taken directly from the installation instructions at the following link:
-- https://lazy.folke.io/installation

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
---@diagnostic disable-next-line: undefined-field (fs_stat)
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("config.globals")
require("config.options")
require("config.keymaps")
require("config.autocmds")

local plugins_directory = "plugins"

require("lazy").setup({
	spec = {
		{ import = plugins_directory },
	},
	rtp = {
		disabled_plugins = {
			"netrw",
			"netrwPlugin",
		},
	},
	install = { colorscheme = { "melange" } },
	checker = { enabled = true },
})
