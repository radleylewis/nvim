--- Configures yamlls (Yaml Language Server)
--- Sets up proper diagnostics, workspace library paths, and LSP capabilities
---
--- @param lspconfig table The lspconfig module from nvim-lspconfig plugin
--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @param on_attach function Callback function executed when LSP attaches to a buffer
--- @return nil This function doesn't return a value, it configures the LSP server
return function(lspconfig, capabilities, on_attach)
	lspconfig.yamlls.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			yaml = {
				schemas = {
					["https://json.schemastore.org/composer.json"] = "composer.json",
					["https://json.schemastore.org/docker-compose.json"] = "docker-compose*.yml",
				},
				validate = true,
				format = {
					enable = true,
				},
			},
		},
		filetypes = { "yaml" },
	})
end
