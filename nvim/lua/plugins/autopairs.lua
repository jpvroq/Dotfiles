return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        local autopairs = require("nvim-autopairs")

        autopairs.setup({
            check_ts = true,
            ts_config = {
                lua = { "string"},
            },
            ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
        })
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require("cmp")
        cmp.event:on("confirm_node", cmp_autopairs.on_confirm_done())
    end,
}
