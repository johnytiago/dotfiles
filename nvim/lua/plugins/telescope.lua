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
}
