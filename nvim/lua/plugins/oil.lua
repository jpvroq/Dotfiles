return {
	"stevearc/oil.nvim",
	---@module "oil"
	---@type oil.SetupOpts
	opts = {
		default_file_explorer = true,
		lsp_file_methods = { enable = true },
	},
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
}
