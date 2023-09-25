vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Shortcuts
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search

-- Window Management
keymap.set("n", "<leader>sv", "<C-w>v")               -- split window vertically
keymap.set("n", "<leader>sh", ":split<CR>")               -- split window horizontally
keymap.set("n", "<leader>sx", ":close<CR>")           -- close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximise

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)              -- Navigate left
keymap.set("n", "<C-j>", "<C-w>j", opts)              -- Navigate down
keymap.set("n", "<C-k>", "<C-w>k", opts)              -- Navigate up
keymap.set("n", "<C-l>", "<C-w>l", opts)              -- Navidate right
keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts) -- Navigate left
keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts) -- Navigate down
keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts) -- Navigate up
keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts) -- Navigate right

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>")    -- focus directory explorer
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>")   -- toggle directory explorer

-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set("n", "<leader>m", ":Telescope find_files follow=true no_ignore=true hidden=true <CR>")
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- line numbers
keymap.set("n", "<leader>n", ":set nu! <CR>")         -- set line number
keymap.set("n", "<leader>rn", ":set rnu! <CR>")       -- set relative line numbers

-- Terminal
keymap.set("n", "<A-t>", ":ToggleTerm size=20 direction=horizontal<CR>")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false }) -- Ctrl + / for commenting
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false }) -- Ctrl + / for commenting
