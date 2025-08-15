-- ================================================================================================
-- TITLE : yamlls (YAML Language Server) LSP Setup
-- LINKS :
--   > github: https://github.com/redhat-developer/yaml-language-server
-- ================================================================================================

--- @param lspconfig table The lspconfig module from nvim-lspconfig plugin
--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @param on_attach function Callback function executed when LSP attaches to a buffer
--- @return nil
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
