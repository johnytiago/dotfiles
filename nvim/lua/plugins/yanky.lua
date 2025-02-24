return {
	"gbprod/yanky.nvim",
	dependencies = {
		{
			"nvim-telescope/telescope.nvim",
			"kkharji/sqlite.lua",
		},
	},
	opts = {
		ring = { storage = "sqlite" },
	},
	keys = {
		{
			"<leader>h",
			function()
				require("telescope").extensions.yank_history.yank_history({})
			end,
			desc = "Open Yank History",
		},
		{ "y", "<Plug>(YankyYank)", mode = { "n", "x" }, desc = "Yank text" },
		{ "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" }, desc = "Put yanked text after cursor" },
		{ "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" }, desc = "Put yanked text before cursor" },
		{ "<c-p>", "<Plug>(YankyPreviousEntry)", desc = "Select previous entry through yank history" },
		{ "<c-n>", "<Plug>(YankyNextEntry)", desc = "Select next entry through yank history" },
	},
}
