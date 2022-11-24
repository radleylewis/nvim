local capabilities = require("cmp_nvim_lsp").default_capabilities()
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.formatting_seq_sync() end
    })
  end
end

-- TypeScript
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
nvim_lsp.pyright.setup({
	capabilities = capabilities,
})
nvim_lsp.bashls.setup({
	capabilities = capabilities,
})
nvim_lsp.html.setup({
	capabilities = capabilities,
})
nvim_lsp.dockerls.setup({
	capabilities = capabilities,
})
nvim_lsp.cssmodules_ls.setup({
	capabilities = capabilities,
})
nvim_lsp.jsonls.setup({
	capabilities = capabilities,
})
