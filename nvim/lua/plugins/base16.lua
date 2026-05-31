return {
	"RRethy/base16-nvim",
	dependencies = { "daedlock/matugen.nvim" },
	lazy = false,
	priority = 1000,
	config = function()
		require("matugen").setup()
	end,
}
