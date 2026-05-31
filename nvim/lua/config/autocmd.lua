vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "text", "plaintex", "gitcommit", "tex" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
	end,
})
