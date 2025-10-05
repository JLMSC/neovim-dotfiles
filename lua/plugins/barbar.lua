return {
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    init = function ()
        vim.g.barbar_auto_setup = false
    end,
    opts = {
        animation = true,
        tabpages = true,
        clickable = true,
        focus_on_close = "previous",
        icons = {
            separator_at_end = false,
        },
    },
    version = "^1.0.0",
}
