return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        filters = {
            dotfiles = true,
            custom = {
                ".git",
                "__pycache__"
            },
            exclude = {
                ".env",
            },
        },
        diagnostics = {
            enable = true,
        },
        renderer = {
            icons = {
                show = {
                    git = true,
                },
                glyphs = {
                    git = {
                        unstaged = "●",
                        staged = "✔",
                        unmerged = "",
                        renamed = "➜",
                        untracked = "★",
                        deleted = "✖",
                        ignored = "◌",
                    },
                },
            },
        },
    },
}
