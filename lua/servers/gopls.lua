--- Configures the gopls (Golang Language Server)
--- Sets up proper diagnostics, workspace library paths, and LSP capabilities
---
--- This configuration is specifically tailored for Neovim Lua development, providing:
--- - Recognition of the global 'vim' variable to prevent diagnostic warnings
--- - Workspace library paths for Neovim runtime and user configuration files
--- - Integration with nvim-lspconfig for consistent LSP behavior
---
--- @param lspconfig table The lspconfig module from nvim-lspconfig plugin
--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @param on_attach function Callback function executed when LSP attaches to a buffer
--- @return nil This function doesn't return a value, it configures the LSP server
return function(lspconfig, capabilities, on_attach)
	lspconfig.gopls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "go" },
	})
end
