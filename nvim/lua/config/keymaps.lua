vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj", silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "<C-d>", "<Del>", { desc = "Delete Character in Insert Mode" })
vim.keymap.set("i", "<C-f>", "<Right>", { desc = "Move Forward in Insert Mode" })
vim.keymap.set("i", "<C-b>", "<Left>", { desc = "Move Backward in Insert Mode" })
vim.keymap.set("i", "<C-a>", "<Home>", { desc = "Move to Beginning of Line" })
vim.keymap.set("i", "<C-e>", "<End>", { desc = "Move to End of Line" })

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to System Clipboard" })
vim.keymap.set("n", "<leader>Y", '"+yy', { desc = "Yank Line to System Clipboard" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Joins lines but keeps cursor in the same place" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half a page & center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half a page & center cursor" })

vim.keymap.set(
	{ "n", "x" },
	"<leader>p",
	[["+p]],
	{ desc = "Replace selected text without affecting the unnamed register" }
)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank text to the system clipboard" })
vim.keymap.set("n", "<leader>yy", [["+Y]], { desc = "Yank the current line to the system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete text without affecting the unnamed register" })

vim.keymap.set(
	"n",
	"<leader>o",
	"o<Esc>",
	{ noremap = true, silent = true, desc = "New line below and exit insert mode" }
)
vim.keymap.set(
	"n",
	"<leader>O",
	"O<Esc>",
	{ noremap = true, silent = true, desc = "New line above and exit insert mode" }
)

vim.keymap.set("n", "<leader>%", vim.cmd.vsplit)

-- Disable leps "s" search, use default instead
vim.keymap.del("n", "s") -- Normal mode
vim.keymap.del("x", "s") -- Visual mode, if Leap mapped it there too
