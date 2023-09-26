local config = function()
  local theme = require("lualine.themes.nightfox")
  theme.normal.c.bg = nil

  require('lualine').setup {
    options = {
      theme = theme,
      globalstatus = true,
    },
    sections = {
      lualine_a = {
        {
          'buffers',
        }
      },
    }
  }
end

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  config = config,
}
