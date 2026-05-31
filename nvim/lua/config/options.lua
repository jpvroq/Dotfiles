vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.smoothscroll = true

vim.opt.laststatus = 0
vim.opt.cmdheight = 0

vim.g.mapleader = " "

vim.diagnostic.config({
	virtual_text = {
		spacing = 4,
		source = "if_many",
	},
	update_in_insert = false,
	severity_sort = true,
})
