return {
	"nvim-telescope/telescope.nvim",
	keys = {
		{
			"<leader>fs",
			function()
				require("telescope.builtin").grep_string({ search = vim.fn.input(" Grep > ") })
			end,
			desc = "Find Plugin File",
		},
	},
	opts = {
		defaults = {
			path_display = {
				"smart",
				truncate = 3, -- always keep last 3 path segments visible
			},
			dynamic_preview_title = true, -- enables full path in preview window title
		},
	},
}
