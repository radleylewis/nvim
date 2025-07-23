return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "onsails/lspkind.nvim",           -- icons in completion menu
    "saadparwaiz1/cmp_luasnip",       -- completion source for snippets
    "L3MON4D3/LuaSnip",               -- snippet engine
    "rafamadriz/friendly-snippets",   -- community snippets
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  config = function()
    local lspkind = require("lspkind")
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      formatting = {
        format = function(entry, vim_item)
          if lspkind.presets.default[vim_item.kind] then
            vim_item.kind = lspkind.presets.default[vim_item.kind] .. " " .. vim_item.kind
          end
          vim_item.menu = ({
            codeium = "",
            luasnip = "",
            buffer = "",
            path = "",
            nvim_lsp = "🅻",
          })[entry.source.name]
          return vim_item
        end,
      },

      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),

      sources = {
        { name = "codeium" },
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      },
    })
  end
}
