return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' },
  config = function()
    require('noice').setup {
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,

          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true,
      },

    }
    vim.keymap.set('n', '<leader>nd', ':Noice dismiss<CR>', { noremap = true, silent = true }) -- <Space>nd
  end,
}

