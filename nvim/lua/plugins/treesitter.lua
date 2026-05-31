return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "lua", "python", "bash", "json"
        },
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        indent = {
            enable = true,
        },
        incremental_selection = {
             enable = true,
             keymaps = {
                init_selection = "<Leader>ss", -- Start selection
                node_incremental = "<Leader>si", -- Expand selection
                node_decremental = "<Leader>sd", -- Reduce selection
            },
        },
    },
}
