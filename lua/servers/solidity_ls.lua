-- ================================================================================================
-- TITLE : solidity_ls (Solidity Language Server) LSP Setup
-- LINKS :
--   > github: https://github.com/juanfranblanco/vscode-solidity
-- ================================================================================================

--- @param lspconfig table The lspconfig module from nvim-lspconfig plugin
--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @param on_attach function Callback function executed when LSP attaches to a buffer
--- @return nil
return function(lspconfig, capabilities, on_attach)
	lspconfig.solidity_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "solidity" },
		root_dir = lspconfig.util.root_pattern("hardhat.config.*", "foundry.toml", "remappings.txt", ".git"),
		settings = {
			solidity = {
				includePath = "",
				remappings = {
					["@openzeppelin/"] = "lib/openzeppelin-contracts/",
					["account-abstraction/"] = "lib/account-abstraction/",
				},
			},
		},
	})
end
