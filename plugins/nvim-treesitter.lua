require("nvim-treesitter.configs").setup({
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
		"vue",
	},
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
})
