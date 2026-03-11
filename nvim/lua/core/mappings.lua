vim.api.nvim_create_autocmd("FileType", {
    pattern = { "latex", "tex", "markdown", "text" },
    callback = function()
        local opts = { buffer = true, silent = true }
        
        -- Normal mode
        -- Down movement
        vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = ture, buffer = true })
        vim.keymap.set('n', '<Down>', "v:count == 0 ? 'gj' : 'j'", { expr = true, buffer = true })

        -- Up movement
        vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, buffer = true })
        vim.keymap.set('n', '<Up>', "v:count == 0 ? 'gk' : 'k'", { expr = true, buffer = true })

        -- Insert mode
        vim.keymap.set('i', '<Down>', '<C-o>gj', opts)
        vim.keymap.set('i', '<Up>', '<C-o>gk', opts)
    end,
})
