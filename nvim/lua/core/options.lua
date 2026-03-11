-- UI Layout
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.showmode = false

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Behaviour
vim.opt.clipboard = "unnamedplus"
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.hlsearch = true
vim.g.editorconfig = true

-- QoL text
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.numberwidth = 2
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "latex", "tex", "markdown" },
    callback = function()
    end,
})

vim.opt.updatetime = 50


-- Misc
vim.opt.completeopt = { "menu", "menuone", "noselect", "noinsert" }

-- Spelling
local spell_group = vim.api.nvim_create_augroup("SpellCheck", { clear = true })


-- Nvim netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    undeline = true,
})
