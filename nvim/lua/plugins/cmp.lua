return {
    "hrsh7th/nvim-cmp",
    version = false,
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
    },
    opts = function()
        local cmp = require("cmp")
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        return {
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end
            },
            mapping = {
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<Esc>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({select = false}),
                ['<Up>'] = cmp.mapping.scroll_docs(-4),
                ['<Down>'] = cmp.mapping.scroll_docs(4)
            },
            sources = {
                {
                    { name = "nvim_lsp" },
                    { name = "luasnip"}
                },
                { name = "buffer" },
            },
            cmp.event:on(
                'confirm_done',
                cmp_autopairs.on_confirm_done()
            )
        }
    end,
}
