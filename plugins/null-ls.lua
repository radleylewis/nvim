local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion

null_ls.setup({
    debug = false,
    sources = {
        formatting.shfmt,
        formatting.black.with({ extra_args = { "--fast" }}),
        formatting.prettier.with({ extra_args = { "--no-semi" }}),
        formatting.stylua,
        diagnostics.shellcheck,
        diagnostics.eslint,
        completion.spell,
    },
})
