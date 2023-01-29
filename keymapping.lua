vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Shortcuts
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search

-- Window Management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>h") -- split window horizontally
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximise

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navidate right

-- Tab Management
keymap.set("n", "<A-o>", ":tabnew<CR>") -- new tab
keymap.set("n", "<A-x>", ":tabclose<CR>") -- close tab
keymap.set("n", "<A-.>", ":tabn<CR>") -- next tab
keymap.set("n", "<A-,>", ":tabp<CR>") -- previous tab

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>") -- focus directory explorer
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>") -- toggle directory explorer
keymap.set( -- find files
	"n",
	"<leader>p",
	"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
	opts
)
keymap.set( -- live grep
	"n",
	"<leader>r",
	"<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({ previewer = false }))<CR>",
	opts
)

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false }) -- Ctrl + / for commenting
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false }) -- Ctrl + / for commenting
