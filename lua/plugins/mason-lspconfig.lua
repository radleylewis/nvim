local opts = {
	ensure_installed = {
		"js-debug-adapter",
		"efm",
		"bashls",
		"tsserver",
		"solidity",
		"tailwindcss",
		"pyright",
		"lua_ls",
		"emmet_ls",
		"jsonls",
		"clangd",
	},

	automatic_installation = true,
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
