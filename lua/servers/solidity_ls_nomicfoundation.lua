-- ================================================================================================
-- TITLE : solidity_ls_nomicfoundation (Solidity Language Server) LSP Setup
-- LINKS :
--   > github: https://github.com/NomicFoundation/hardhat-vscode
-- ================================================================================================

--- @param lspconfig table The lspconfig module from nvim-lspconfig plugin
--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @param on_attach function Callback function executed when LSP attaches to a buffer
--- @return nil
return function(lspconfig, capabilities, on_attach)
	lspconfig.solidity.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		single_file_support = true,
		cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
		filetypes = { "solidity" },
		root_dir = lspconfig.util.find_git_ancestor,
	})
end
