local opts = {
	opts = {
		highlight_ahead_of_time = true,
		highlight_unlabeled = false,
		case_sensitive = false,
		special_keys = {
			repeat_search = "<enter>",
			next_phase_one_target = "<enter>",
			next_target = { "<enter>", ";" },
			prev_target = { "<tab>", "," },
			next_group = "<space>",
			prev_group = "<tab>",
			multi_accept = "<enter>",
			multi_revert = "<backspace>",
		},
	},
}

return {
	"ggandor/leap.nvim",
	opts = opts,
	config = function()
		require("leap").add_default_mappings()
	end,
	event = "BufReadPre",
	dependencies = { "tpope/vim-repeat" },
}
