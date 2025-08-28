-- ================================================================================================
-- TITLE : rustaceanvim
-- ABOUT : A heavily modified fork of rust-tools.nvim
-- LINKS :
--   > github : https://github.com/mrcjkb/rustaceanvim
-- ================================================================================================

local on_attach = require("utils.lsp").on_attach

local get_codelldb_adapter = function()
	local mason_registry = require("mason-registry")
	if mason_registry.is_installed("codelldb") then
		local codelldb = mason_registry.get_package("codelldb")
		local ok, install_path = pcall(codelldb:get_install_path(), codelldb)
		local extension_path
		if ok and install_path then
			extension_path = install_path .. "/extension/"
		else
			print("[error] getting codelldb install path, using fallback...")
			extension_path = vim.fn.expand("~/.local/share/nvim/mason/packages/codelldb/extension/")
		end
		local codelldb_path = extension_path .. "adapter/codelldb"
		local base_path = extension_path .. "lldb/lib/liblldb"
		---@diagnostic disable-next-line: undefined-field (os_uname)
		local this_os = vim.uv.os_uname().sysname
		local liblldb_path = base_path .. (this_os == "Linux" and ".so" or ".dylib")
		local cfg = require("rustaceanvim.config")
		return cfg.get_codelldb_adapter(codelldb_path, liblldb_path)
	end
end

local config = function()
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

return {
	"mrcjkb/rustaceanvim",
	version = "^6",
	lazy = false,
	config = config,
}
