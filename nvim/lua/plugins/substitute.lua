return {
	"gbprod/substitute.nvim",
	config = function()
		require("substitute").setup()

		-- Keybindings
		vim.keymap.set("n", "<leader>r", require("substitute").operator, { desc = "Substitute Operator" })
		vim.keymap.set("x", "<leader>r", require("substitute").visual, { desc = "Substitute in Visual Mode" })
		vim.keymap.set("n", "<leader>rr", require("substitute").line, { desc = "Substitute Whole Line" })
		vim.keymap.set("n", "<leader>R", require("substitute").eol, { desc = "Substitute Until End of Line" })
	end,
}
