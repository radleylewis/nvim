local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Shortcuts
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search

-- Window Management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", ":split<CR>") -- split window horizontally
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximise

-- Buffer Navigation
keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
keymap.set("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navidate right
keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts) -- Navigate left
keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts) -- Navigate down
keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts) -- Navigate up
keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts) -- Navigate right
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts) -- Navigate left
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts) -- Navigate down
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts) -- Navigate up
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts) -- Navidate right

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { desc = "Go to NvimTree" }) -- focus directory explorer
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" }) -- toggle directory explorer

-- Show full file path
keymap.set("n", "<leader>pa", "[[Cmd]]echo expand('%:p')<CR>", opts)

-- Move Lines
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false }) -- Ctrl + / for commenting
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false }) -- Ctrl + / for commenting
