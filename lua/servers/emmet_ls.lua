-- ================================================================================================
-- TITLE : emmet_ls (Emmet Language Server) LSP Setup
-- ABOUT : Configures Emmet Language Server for web-related (e.g. TS/JS, CSS, Sass, Svelte, Vue)
-- LINKS :
--   > github: https://github.com/aca/emmet-ls
-- ================================================================================================

--- @param lspconfig table The lspconfig module from nvim-lspconfig plugin
--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @param on_attach function Callback function executed when LSP attaches to a buffer
--- @return nil
return function(lspconfig, capabilities, on_attach)
	lspconfig.emmet_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = {
			"typescript",
			"javascript",
			"javascriptreact",
			"typescriptreact",
			"css",
			"sass",
			"scss",
			"svelte",
			"vue",
		},
	})
end
