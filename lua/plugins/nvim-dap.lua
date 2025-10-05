-- luarocks error: comment dependencies and config,
-- install only nvim-dap first.
return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        "mfussenegger/nvim-dap-python",
    },
    config = function ()
        require("dap-python").setup(
            "~/.config/nvim/.venv/bin/python"
        )
        require("dapui").setup()
        vim.fn.sign_define("DapBreakpoint", {
            text = "🛑",
            texthl="Error",
            linehl="",
            numhl="",
        })
        vim.fn.sign_define("DapBreakpointCondition", {
            text="⚡",
            texthl="WarningMsg",
            linehl="",
            numhl="",
        })
        vim.fn.sign_define("DapLogPoint", {
            text="📝",
            texthl="Comment",
            linehl="",
            numhl="",
        })
    end,
}
