local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", 
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local telescope = {
    'nvim-telescope/telescope.nvim',      
    tag = '0.1.3',
    dependencies = { 'nvim-lua/plenary.nvim' },
}

local autopairs = {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
}

require("lazy").setup({ 
  "christoomey/vim-tmux-navigator",                   -- TMUX Navigation
  telescope,                                          -- Fuzzy Finder
  autopairs,                                          -- Autopairs/Brackets
  "EdenEast/nightfox.nvim",                           -- Colorscheme
  "xiyaowong/transparent.nvim",                       -- Background Transparency
  "nvim-tree/nvim-tree.lua",                          -- Filetree Navigation
  "nvim-tree/nvim-web-devicons",                      -- File Icons
  "nvim-lualine/lualine.nvim",                        -- Statusline
  "RRethy/vim-illuminate",                            -- Illuminate Instances of Word
  "lewis6991/gitsigns.nvim",                          -- Git Status Icons 
  { "machakann/vim-highlightedyank", lazy = false },  -- Highlight Yank
  { 'numToStr/Comment.nvim', lazy = false },          -- Commenting
}, opts)

require('plugins.colorscheme')
require('plugins.transparent')
require('plugins.nvim-tree')
require('plugins.lualine')
require('plugins.comment')
require('plugins.vim-illuminate')
require('plugins.telescope')
require('plugins.gitsigns')
require('settings')
require('keymappings')
