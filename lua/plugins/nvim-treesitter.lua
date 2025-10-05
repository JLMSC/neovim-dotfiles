return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "python",
        },
        sync_install = true,
        auto_install = true,
        ignore_install = {
            "all"
        },
        fold = {
            enable = true,
        },
    },
}
