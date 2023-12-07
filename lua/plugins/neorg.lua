return {
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {}, -- Loads default behaviour
					["core.concealer"] = {}, -- Adds pretty icons to your documents
					["core.dirman"] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								general = "~/Documents/Notes/general",
								work = "~/Documents/Notes/work",
								youtube = "~/Documents/Notes/youtube",
							},
							default_workspace = "general",
						},
					},
				},
			})
		end,
	},
}
