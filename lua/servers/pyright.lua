-- ================================================================================================
-- TITLE : pyright (Python Language Server) LSP Setup
-- LINKS :
--   > github: https://github.com/microsoft/pyright
-- ================================================================================================

--- @param lspconfig table The lspconfig module from nvim-lspconfig plugin
--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @param on_attach function Callback function executed when LSP attaches to a buffer
--- @return nil This function doesn't return a value, it configures the LSP server
return function(lspconfig, capabilities, on_attach)
	lspconfig.pyright.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			pyright = {
				disableOrganizeImports = false,
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					autoImportCompletions = true,
				},
			},
		},
	})
end
