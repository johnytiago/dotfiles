vim.o.clipboard = ""
vim.opt.scrolloff = 8

vim.filetype.add({
	pattern = {
		[".*%.tpl"] = "yaml",
	},
})
