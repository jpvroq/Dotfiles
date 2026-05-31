return {
	"barreiroleo/ltex_extra.nvim",
	ft = { "markdown", "tex", "gitcommit", "plaintex" },
	dependencies = { "neovim/nvim-lspconfig" },
	opts = {
		load_langs = { "ca-ES", "es-ES" },
		init_check = true,
		path = vim.fn.stdpath("config") .. "/spell",
	},
	config = function(_, opts)
		local ltex = "ltex_plus"
		vim.lsp.config(ltex, {
			on_attach = function(client, bufnr)
				require("ltex_extra").setup(opts)
			end,
			settings = {
				ltex = {
					language = "auto",
				},
			},
		})
		vim.lsp.enable(ltex)
	end,
}
