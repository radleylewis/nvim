
local config = function()
  -- Advised as per docs
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1
  vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]

  require("nvim-tree").setup({
    actions = {
      open_file = {
        window_picker = {
          enable = false,
        },
      },
    },
    git = {
      enable = true,
      ignore = false,
    },
    filters = {
      dotfiles = false,
    },
  })
end

return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  config = config,
}
