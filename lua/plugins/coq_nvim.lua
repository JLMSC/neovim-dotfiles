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
        vim.opt.updatetime = 500
        vim.api.nvim_create_autocmd("CursorHold", {
            callback = function ()
                vim.diagnostic.open_float(nil, {
                    focusable = false,
                    border = "rounded",
                    source = "always",
                    prefix = "",
                    max_width = 88,
                    wrap = true,
                })
            end,
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
                        disableTaggedHints = false,
                        diagnosticMode = "openFilesOnly",
                        typeCheckingMode = "basic",
                    },
                },
            },
        })
        vim.lsp.enable("pyright")
    end,
}
