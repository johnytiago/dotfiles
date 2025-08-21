vim.o.clipboard = ""
vim.opt.scrolloff = 8

vim.g.lazyvim_eslint_auto_format = true

vim.filetype.add({
	pattern = {
		[".*/templates/.*%.yaml"] = "helm",
		[".*/templates/.*%.yml"] = "helm",
		[".*/templates/.*%.tpl"] = "helm",
	},
})
