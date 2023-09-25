-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

mason.setup()

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

mason_lspconfig.setup({
  -- list of LSPs for mason to install
  ensure_installed = {
    "efm",
    "bashls",
    "tsserver",
    "html",
    "cssls",
    "lua_ls",
    "emmet_ls",
    "pyright",
    "vimls",
    "solidity",
    "dockerls",
    "rust_analyzer",
    "tailwindcss",
  },
  automatic_installation = true,
})

