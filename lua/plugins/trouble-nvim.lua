local diagnostic_signs = require("util.icons").diagnostic_signs
local maplazykey = require("util.keymapper").maplazykey

return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		signs = {
			-- icons / text used for a diagnostic
			error = diagnostic_signs.error,
			warning = diagnostic_signs.warn,
			hint = diagnostic_signs.hint,
			information = diagnostic_signs.info,
			other = diagnostic_signs.info,
		},
	},
	keys = {
		maplazykey("<leader>xx", function()
			require("trouble").toggle()
		end),
		maplazykey("<leader>xw", function()
			require("trouble").toggle("workspace_diagnostics")
		end),
		maplazykey("<leader>xd", function()
			require("trouble").toggle("document_diagnostics")
		end),
		maplazykey("<leader>xq", function()
			require("trouble").toggle("quickfix")
		end),
		maplazykey("<leader>xl", function()
			require("trouble").toggle("loclist")
		end),
		maplazykey("gR", function()
			require("trouble").toggle("lsp_references")
		end),
	},
}
