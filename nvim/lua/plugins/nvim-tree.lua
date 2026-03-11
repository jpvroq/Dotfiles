return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "-", ":NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
    },
    config = function()
        require("nvim-tree").setup({
            sync_root_with_cwd = true,
            respect_buf_cwd = true,
            update_focused_file = {
                enable = true,
                update_root = true,
            },
        })

        vim.api.nvim_create_autocmd("BufEnter", {
            nested = true,
            callback = function()
                local layout = vim.api.nvim_list_wins()
                if #layout == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
                    vim.cmd("quit")
                end
            end
        })
    end,
}
