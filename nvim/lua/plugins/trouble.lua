return {
	"folke/trouble.nvim",
	opts = {
		modes = {
			diagnostics = {
				auto_open = false,
				filter = {
					any = {
						buf = 0,
					},
				},
			},
		},
	},
	cmd = "Trouble",
	keys = {
		{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
		{ "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
	},
}
