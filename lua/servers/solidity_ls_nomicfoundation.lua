-- ================================================================================================
-- TITLE : solidity_ls_nomicfoundation (Solidity Language Server) LSP Setup
-- LINKS :
--   > github: https://github.com/NomicFoundation/hardhat-vscode
-- ================================================================================================

--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @return nil
return function(capabilities)
	vim.lsp.config("solidity", {
		capabilities = capabilities,
		single_file_support = true,
		cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
		filetypes = { "solidity" },
		settings = { rootMarkers = { ".git/" } },
	})
end
