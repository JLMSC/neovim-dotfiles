return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        {
            "ms-jpq/coq_nvim",
            branch = "coq",
        },
    },
    init = function ()
        vim.g.coq_settings = {
            auto_start = "shut-up",
            clients = {
                snippets = {
                    warn = {},
                },
            },
        }
    end,
    config = function ()
        vim.diagnostic.config({
            underline = true,
            virtual_text = false,
            virtual_lines = false,
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "❌",
                    [vim.diagnostic.severity.WARN] = "⚠️",
                    [vim.diagnostic.severity.INFO] = "ℹ️",
                    [vim.diagnostic.severity.HINT] = "💡",
                },
            },
            update_in_insert = true,
        })

        vim.lsp.config("pyright", {
            cmd = {
                vim.fn.expand("~") .. "/.config/nvim/.venv/bin/pyright-langserver",
                "--stdio",
            },
            filetypes = {
                "python",
            },
            -- https://microsoft.github.io/pyright/#/settings
            settings = {
                python = {
                    analysis = {
                        autoImportCompletions = true,
                        autoSearchPaths = true,
                        useLibraryCodeForTypes = true,
                        diagnosticMode = "openFilesOnly",
                        typeCheckingMode = "standard",
                    },
                },
            },
        })
        vim.lsp.enable("pyright")
    end,
}
