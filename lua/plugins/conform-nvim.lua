-- lazy.nvim plugin spec
return {
    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" }, -- load on buffer open
        opts = {
            formatters_by_ft = {
                -- JS / JSX / TS / TSX
                javascript = { "prettier" },
                javascriptreact = { "prettier" },
                typescript = { "prettier" },
                typescriptreact = { "prettier" },
                json = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                markdown = { "prettier" },
            },
            format_on_save = true, -- automatically format on save
        },
        -- optional: keymaps to manually format
        keys = {
            { "<leader>cf", function() require("conform").format() end, desc = "Format current buffer" },
        },
    },
}

