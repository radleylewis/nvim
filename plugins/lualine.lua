local theme = require("lualine.themes.nightfox")
theme.normal.c.bg = nil

require('lualine').setup {
  options = {
    theme = theme,
    transparent_bg = true,
    globalstatus = true,
  }
}

