return {
  "https://github.com/obsidian-nvim/obsidian.nvim",
	lazy = false,
	config = function()
		local function is_arch()
			local f = io.open("/etc/os-release", "r")
			if not f then
				return false
			end
			local content = f:read("*a")
			f:close()
			content = (content or ""):lower()
			return content:find("arch") ~= nil or content:find("artix") ~= nil
		end

		-- IMPORTANT: Obsidian.nvim requires at least one *valid* workspace.
		-- The original config defaulted to a Linux-only VeraCrypt mount path,
		-- which fails on macOS and triggers “At least one workspace is required!”.
		local workspace_path

		if vim.fn.has("mac") == 1 then
			-- Change this to your vault directory if different.
			-- Common alternatives:
			--   iCloud: ~/Library/Mobile Documents/iCloud~md~obsidian/Documents/<Vault>
			--   Dropbox: ~/Dropbox/<Vault>
			workspace_path = vim.fn.expand("~/Documents/Notes")
		elseif is_arch() then
			workspace_path = vim.fn.expand("~/Documents/Notes")
		else
			workspace_path = "/run/media/veracrypt64/Notes/"
		end

		require("obsidian").setup({
			legacy_commands = false,
			workspaces = {
				{ name = "Notes", path = workspace_path },
			},
			picker = { name = "fzf-lua" },
		})

		vim.keymap.set("n", "<leader>nn", "<cmd>Obsidian new<cr>", { desc = "New Note" })
		vim.keymap.set("n", "<leader>nf", "<cmd>Obsidian quick_switch<cr>", { desc = "Find note" })
		vim.keymap.set("n", "<leader>ns", "<cmd>Obsidian search<cr>", { desc = "Search notes" })
		vim.keymap.set("n", "<leader>nt", "<cmd>Obsidian today<cr>", { desc = "Today's daily note" })
	end,
}

