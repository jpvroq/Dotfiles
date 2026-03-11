return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_complete_enabled = 1
        vim.g.vimtex_syntax_enabled = 1

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "tex",
            callback = function()
                vim.opt_local.omnifunc = "vimtex#complete#omnifunc"
            end,
        })
    end
}
