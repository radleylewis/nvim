local mapkey = require("util.keymapper").mapkey

-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n", { desc = "Next buffer" })
mapkey("<leader>bp", "bprevious", "n", { desc = "Prev buffer" })
mapkey("<leader>bb", "e #", "n", { desc = "Switch to Other Buffer" })
mapkey("<leader>`", "e #", "n", { desc = "Switch to Other Buffer" })

-- Directory Navigatio}n
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<leader>e", "NvimTreeToggle", "n")

-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n", { desc = "Navigate Left" })
mapkey("<C-j>", "<C-w>j", "n", { desc = "Navigate Down" })
mapkey("<C-k>", "<C-w>k", "n", { desc = "Navigate Up" })
mapkey("<C-l>", "<C-w>l", "n", { desc = "Navigate Right" })
mapkey("<C-h>", "wincmd h", "t", { desc = "Navigate Left" })
mapkey("<C-j>", "wincmd j", "t", { desc = "Navigate Down" })
mapkey("<C-k>", "wincmd k", "t", { desc = "Navigate Up" })
mapkey("<C-l>", "wincmd l", "t", { desc = "Navigate Right" })
mapkey("<C-h>", "TmuxNavigateLeft", "n", { desc = "Navigate Left" })
mapkey("<C-j>", "TmuxNavigateDown", "n", { desc = "Navigate Down" })
mapkey("<C-k>", "TmuxNavigateUp", "n", { desc = "Navigate Up" })
mapkey("<C-l>", "TmuxNavigateRight", "n", { desc = "Navigate Right" })

-- Window Management
mapkey("<leader>sv", "vsplit", "n", { desc = "Split Vertically" })
mapkey("<leader>sh", "split", "n", { desc = "Split Horizontally" })
mapkey("<leader>sm", "MaximizerToggle", "n", { desc = "Toggle Minimise" })

-- Indenting
mapkey("<", "v", "<gv", { desc = "Shift Indentation to Left" })
mapkey(">", "v", ">gv", { desc = "Shift Indentation to Right" })

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n", { desc = "Show Full File Path" })

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false, desc = "Comment Line" })
vim.api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false, desc = "Comment Line" })

