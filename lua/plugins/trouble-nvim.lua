local diagnostic_signs = require("util.icons").diagnostic_signs
local maplazykey = require("util.keymapper").maplazykey

return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		signs = {
			-- icons / text used for a diagnostic
			error = diagnostic_signs.Error,
			warning = diagnostic_signs.Warn,
			hint = diagnostic_signs.Hint,
			information = diagnostic_signs.Info,
			other = diagnostic_signs.Info,
		},
	},
	keys = {
		maplazykey("<leader>xx", function()
			require("trouble").toggle()
		end, "Toggle Trouble"),
		maplazykey("<leader>xw", function()
			require("trouble").toggle("workspace_diagnostics")
		end, "Show Workspace Diagnostics"),
		maplazykey("<leader>xd", function()
			require("trouble").toggle("document_diagnostics")
		end, "Show Document Diagnostics"),
		maplazykey("<leader>xq", function()
			require("trouble").toggle("quickfix")
		end, "Toggle Quickfix List"),
		maplazykey("<leader>xl", function()
			require("trouble").toggle("loclist")
		end, "Toggle Location List"),
		maplazykey("gR", function()
			require("trouble").toggle("lsp_references")
		end, "Toggle LSP References"),
	},
}
