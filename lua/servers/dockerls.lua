-- ================================================================================================
-- TITLE : dockerls (Docker Language Server) LSP Setup
-- LINKS :
--   > github: https://github.com/rcjsuen/dockerfile-language-server-nodejs
-- ================================================================================================

--- @param lspconfig table The lspconfig module from nvim-lspconfig plugin
--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @param on_attach function Callback function executed when LSP attaches to a buffer
--- @return nil
return function(lspconfig, capabilities, on_attach)
	lspconfig.dockerls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "dockerfile" },
	})
end
