require('mason').setup()
require('mason-lspconfig').setup()
require('utils.diagnostics')

local on_attach = require('utils.lsp').on_attach
local lspconfig = require('lspconfig')
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("servers.lua_ls")(lspconfig, on_attach, capabilities)
-- require("lsp.servers.gopls")(lspconfig, on_attach, capabilities)
-- require("lsp.servers.pyright")(lspconfig, on_attach, capabilities)
-- require("lsp.servers.solidity_ls")(lspconfig, on_attach, capabilities)
-- require("lsp.servers.ts_ls")(lspconfig, on_attach, capabilities)
-- require("lsp.servers.emmet_ls")(lspconfig, on_attach, capabilities)
-- require("lsp.servers.bashls")(lspconfig, on_attach, capabilities)
-- require("lsp.servers.dockerls")(lspconfig, on_attach, capabilities)
-- require("lsp.servers.clangd")(lspconfig, on_attach, capabilities)
-- require("lsp.servers.efm")(lspconfig, on_attach, capabilities)
