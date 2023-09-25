local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ 
  "EdenEast/nightfox.nvim",               -- Colorscheme
  "xiyaowong/transparent.nvim",           -- Background Transparency
  "christoomey/vim-tmux-navigator",       -- TMUX Navigation
}, opts)

require('plugins.colorscheme')
require('plugins.transparent')
require('settings')
require('keymappings')
