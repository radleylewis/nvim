local M = {}

M.on_attach = function(client, bufnr)
  local keymap = vim.keymap.set
  local opts = {
    noremap = true,
    silent = true,
    buffer = bufnr
  }

  -- Lspsaga
  keymap("n", "<leader>fd", ":Lspsaga finder<CR>", opts)
  keymap("n", "<leader>gd", ":Lspsaga peek_definition<CR>", opts)
  keymap("n", "<leader>gD", ":Lspsaga goto_definition<CR>", opts)
  keymap("n", "<leader>gS", ":vsplit | Lspsaga goto_definition<CR>", opts)
  keymap("n", "<leader>ca", ":Lspsaga code_action<CR>", opts)
  keymap("n", "<leader>rn", ":Lspsaga rename<CR>", opts)
  keymap("n", "<leader>D", ":Lspsaga show_line_diagnostics<CR>", opts)
  keymap("n", "<leader>d", ":Lspsaga show_cursor_diagnostics<CR>", opts)
  keymap("n", "<leader>pd", ":Lspsaga diagnostic_jump_prev<CR>", opts)
  keymap("n", "<leader>nd", ":Lspsaga diagnostic_jump_next<CR>", opts)
  keymap("n", "<leader>gi", ":Lspsaga finder imp<CR>", opts)
  keymap("n", "K", ":Lspsaga hover_doc<CR>", opts)

  -- Language-specific
  if client.name == "pyright" then
    keymap("n", "<leader>oi", ":PyrightOrganizeImports<CR>", opts)
    keymap("n", "<leader>dt", ":lua require('dap-python').test_method()<CR>", opts)
  end

  if client.name == "ts_ls" then
    keymap("n", "<leader>oi", ":TypeScriptOrganizeImports<CR>", opts)
  end
end

-- M.typescript_organise_imports = function()
--   local params = {
--     command = "_typescript.organizeImports",
--     arguments = { vim.fn.expand("%:p") },
--   }
--   vim.lsp.buf.execute_command(params)
-- end

return M
