local opts = {
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
}

return {
	"williamboman/mason.nvim",
	opts = opts,
	cmd = "Mason",
	event = "BufReadPre",
}
