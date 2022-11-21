local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion
local hover = null_ls.builtins.hover

local prettier_config = {
  "--trailing-comma",
  "--single-quote",
}

null_ls.setup({
    debug = false,
    sources = {
        formatting.shfmt,
        formatting.black.with({ extra_args = { "--fast" }}),
        formatting.prettier.with({ extra_args = prettier_config }),
        formatting.stylua,
        diagnostics.shellcheck,
        diagnostics.eslint,
        diagnostics.vint,
        hover.printenv,
        completion.spell,
    },
})
