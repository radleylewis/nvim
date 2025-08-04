local M = {}

M.on_attach = function(client, bufnr)
	local keymap = vim.keymap.set
	local opts = {
		noremap = true,
		silent = true,
		buffer = bufnr,
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

	-- Order Imports (if supported by the client (i.e. LSP))
	if client.supports_method("textDocument/codeAction") then
		keymap("n", "<leader>oi", function()
			vim.lsp.buf.code_action({
				context = {
					only = { "source.organizeImports" },
					diagnostics = {},
				},
				apply = true,
				bufnr = bufnr,
			})
			-- format after changing import order
			vim.defer_fn(function()
				vim.lsp.buf.format({ bufnr = bufnr })
			end, 100) -- slight delay to allow for the import order to go first
		end, opts)
	end
end

return M
