local M = {}

M.on_attach = function(client, bufnr)
	local keymap = vim.keymap.set
	local opts = {
		noremap = true,
		silent = true,
		buffer = bufnr,
	}

	-- Lspsaga
	keymap("n", "<leader>fd", "<cmd>Lspsaga finder<CR>", opts)
	keymap("n", "<leader>gd", "<cmd>Lspsaga peek_definition<CR>", opts)
	keymap("n", "<leader>gD", "<cmd>Lspsaga goto_definition<CR>", opts)
	keymap("n", "<leader>gS", "<cmd>vsplit<CR><cmd>Lspsaga goto_definition<CR>", opts)
	keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
	keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
	keymap("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
	keymap("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
	keymap("n", "<leader>pd", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
	keymap("n", "<leader>nd", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
	keymap("n", "<leader>gi", "<cmd>Lspsaga finder imp<CR>", opts)
	keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

	-- Order Imports (if supported by the client LSP)
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
			end, 50) -- slight delay to allow for the import order to go first
		end, opts)
	end
end

return M
