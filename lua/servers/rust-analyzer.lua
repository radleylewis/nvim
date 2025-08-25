--- @param client table rust client
--- @param bufnr number
--- @return nil
local on_attach = function(client, bufnr)
	local keymap = vim.keymap.set
	local opts = { noremap = true, silent = true, buffer = bufnr }

	keymap("n", "K", "<cmd>RustLsp hover actions<CR>", opts)
	keymap("n", "<leader>ca", "<cmd>RustLsp codeAction<CR>", opts)
	keymap("n", "<leader>cr", "<cmd>RustLsp runnables<CR>", opts)
	keymap("n", "<leader>ce", "<cmd>RustLsp expandMacro<CR>", opts)
end

local get_codelldb_adapter = function()
	local mason_registry = require("mason-registry")
	if mason_registry.is_installed("codelldb") then
		local codelldb = mason_registry.get_package("codelldb")
		local extension_path = codelldb:get_install_path() .. "/extension/"
		local codelldb_path = extension_path .. "adapter/codelldb"
		local base_path = extension_path .. "lldb/lib/liblldb"
		---@diagnostic disable-next-line: undefined-field (os_uname)
		local this_os = vim.uv.os_uname().sysname
		local liblldb_path = base_path .. (this_os == "Linux" and ".so" or ".dylib")
		local cfg = require("rustaceanvim.config")
		return cfg.get_codelldb_adapter(codelldb_path, liblldb_path)
	end
end

local M = {}

M.config = function()
	local settings = {
		tools = {
			hover_actions = {
				auto_focus = true,
			},
		},
		server = {
			on_attach = on_attach,
			settings = {
				["rust-analyzer"] = {
					cargo = {
						allFeatures = true,
					},
					-- checkOnSave = {
					-- 	command = "clippy",
					-- },
				},
			},
		},
		dap = {},
	}
	local ok, adapter = pcall(get_codelldb_adapter)
	if ok then
		settings.dap.adapter = adapter
	end
	vim.g.rustaceanvim = settings
end

return M
