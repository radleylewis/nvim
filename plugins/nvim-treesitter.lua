require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"yaml",
		"html",
		"css",
		"markdown",
		"bash",
		"lua",
		"dockerfile",
		"gitignore",
		"python",
	},
	auto_install = true,
})
