return {
    "rmagatti/auto-session",
    lazy = false,
    opts = {
        enabled = true,
        auto_save = true,
        auto_restore = true,
        auto_create = true,
        auto_delete_empty_sessions = true,
        lazy_support = true,
        allowed_dirs = nil,
        suppressed_dirs = nil,
        pre_save_cmds = {
            function ()
            vim.api.nvim_exec_autocmds("User", { pattern = "SessionSavePre" })
            end,
        },
    },
}
