return {
    {
        "williamboman/mason.nvim",
        config = function()
        require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "ltex",
                    "pyright",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "hrsh7th/cmp-nvim-lsp" },
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local util = require("lspconfig.util")
            local mason_bin = vim.fn.stdpath("data") .. "/mason/bin/"
            

            -- LTeX configure
            vim.lsp.config("ltex", {
                cmd = {
                    "env",
                    "JAVA_TOOL_OPTIONS=-Djdk.xml.totalEntitySizeLimit=1000000",
                    mason_bin .. "ltex-ls"
                },
                root_markers = { ".git", "main.tex", "."},
                capabilities = capabilities,
                filetypes = { "tex", "bib", "markdown" },

                on_attach = function(client, bufnr)

                    vim.keymap.set('n', '<RightMouse>', function()
                        vim.lsp.buf.code_action()
                    end, { buffer = bufnr, silent = true, desc = "LTeX Suggestions" })
                end,
                settings = {
                    ltex = {
                        language = "ca-ES",
                        enabled = { "latex", "tex", "bib", "markdown" },
                    },
                },
            })
            vim.lsp.enable("ltex")

            -- pyright
            vim.lsp.config("pyright", {
                cmd = { mason_bin .. "pyright-langserver", "--stdio" },
                root_markers = { "pyproject.toml", "setup.py", ".git", "." },
                capabilities = capabilities,
                filetypes = { "python" },
                settings = {
                    python = {
                        analysis = {
                            autoSearchPaths = true,
                            diagnosticMode = "workspace",
                            useLibraryCodeForTypes = true,
                            extraPaths = { "src" },
                            include = { "src" },
                            executionEnvironments = {
                                root = "stc",
                            },
                        },
                    },
                },
            })
            vim.lsp.enable("pyright")
        end,
    },
}

