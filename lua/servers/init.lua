local on_attach = require("utils.lsp").on_attach
local diagnostic_signs = require("utils.icons").diagnostic_signs
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- define diagnostic sign icons
for type, icon in pairs(diagnostic_signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Language Server Protocol (LSP)
require("servers.lua_ls")(lspconfig, capabilities, on_attach)
require("servers.pyright")(lspconfig, capabilities, on_attach)
require("servers.gopls")(lspconfig, capabilities, on_attach)
require("servers.jsonls")(lspconfig, capabilities, on_attach)
require("servers.ts_ls")(lspconfig, capabilities, on_attach)
require("servers.bashls")(lspconfig, capabilities, on_attach)
require("servers.clangd")(lspconfig, capabilities, on_attach)
require("servers.dockerls")(lspconfig, capabilities, on_attach)
require("servers.solidity_ls")(lspconfig, capabilities, on_attach)
require("servers.emmet_ls")(lspconfig, capabilities, on_attach)
require("servers.yamlls")(lspconfig, capabilities, on_attach)

-- Linters & Formatters
require("servers.efm-langserver")(lspconfig, capabilities, on_attach)
