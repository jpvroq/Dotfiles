local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Paste without replacing clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("v", "p", '"_dp', opts)
-- Delete without replacing clipboard
vim.keymap.set({ "n", "v" }, "d", [["_d]])

-- Clear search highlight
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search hl", silent = true })

vim.keymap.set("n", "Q", "<nop>")

-- Replace word form file below cursor
vim.keymap.set("n", "<leader>s", [[:&s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word below cursor" })


