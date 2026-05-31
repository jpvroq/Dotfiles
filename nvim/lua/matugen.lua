local M = {}

function M.setup()
	require("base16-colorscheme").setup({
		-- Background tones
		base00 = "#d3eaf8", -- Default Background
		base01 = "#c1e1f5", -- Lighter Background (status bars)
		base02 = "#b8ddf4", -- Selection Background
		base03 = "#5e89a7", -- Comments, Invisibles
		-- Foreground tones
		base04 = "#51565a", -- Dark Foreground (status bars)
		base05 = "#181a1b", -- Default Foreground
		base06 = "#181a1b", -- Light Foreground
		base07 = "#181a1b", -- Lightest Foreground
		-- Accent colors
		base08 = "#fd4663", -- Variables, XML Tags, Errors
		base09 = "#2b0e58", -- Integers, Constants
		base0A = "#0f1861", -- Classes, Search Background
		base0B = "#114a6e", -- Strings, Diff Inserted
		base0C = "#411584", -- Regex, Escape Chars
		base0D = "#145985", -- Functions, Methods
		base0E = "#142185", -- Keywords, Storage
		base0F = "#f7bbc4", -- Deprecated, Embedded Tags
	})
end

-- Register a signal handler for SIGUSR1 (matugen updates)
local signal = vim.uv.new_signal()
signal:start(
	"sigusr1",
	vim.schedule_wrap(function()
		package.loaded["matugen"] = nil
		require("matugen").setup()
	end)
)

return M
