return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "modern",
        icons = {
            mappings = false,
        },
        spec = {
            {
                "<leader>l",
                group = "💤 Lazy",
            },
            {
                "<leader>t",
                group = "🔭 Telescope",
            },
            {
                "<leader>a",
                group = "💾 AutoSession",
            },
            {
                "<leader>b",
                group = "🧩 Barbar",
            },
            {
                "<leader>e",
                group = "📂 NvimTree",
            },
            {
                "<leader>d",
                group = "🐞 DAP",
            },
        },
    },
    keys = {
        -- Neovim bindings
        {
            "<leader>h",
            "<cmd>checkhealth<cr>",
            desc = "❤️ Check health",
        },
        -- Lazy bindings
        {
            "<leader>lh",
            "<cmd>Lazy<cr>",
            desc = "🏠 Home",
        },
        {
            "<leader>ls",
            "<cmd>Lazy sync<cr>",
            desc = "🔄 Sync",
        },
        {
            "<leader>lu",
            "<cmd>Lazy update<cr>",
            desc = "⬆️ Update",
        },
        {
            "<leader>lx",
            "<cmd>Lazy clean<cr>",
            desc = "🧹 Clean",
        },
        {
            "<leader>lc",
            "<cmd>Lazy check<cr>",
            desc = "✅ Check",
        },
        -- Telescope bindings
        {
            "<leader>tf",
            "<cmd>Telescope find_files<cr>",
            desc = "📄 Find files",
        },
        {
            "<leader>tg",
            "<cmd>Telescope live_grep<cr>",
            desc = "🔍 Live grep",
        },
        {
            "<leader>tc",
            "<cmd>Telescope colorscheme<cr>",
            desc = "🎨 Colorscheme",
        },
        {
            "<leader>tb",
            "<cmd>Telescope buffers<cr>",
            desc = "📂 Buffers",
        },
        {
            "<leader>tx",
            "<cmd>Telescope git_status<cr>",
            desc = "🟢 Git status",
        },
        {
            "<leader>tv",
            "<cmd>Telescope git_branches<cr>",
            desc = "🌿 Git branches",
        },
        {
            "<leader>tn",
            "<cmd>Telescope git_commits<cr>",
            desc = "📝 Git commits",
        },
        {
            "<leader>td",
            "<cmd>Telescope diagnostics<cr>",
            desc = "🩺 Diagnostics",
        },
        {
            "<leader>th",
            "<cmd>Telescope help_tags<cr>",
            desc = "📖 Help tags",
        },
        {
            "<leader>tz",
            "<cmd>Telescope lsp_definitions<cr>",
            desc = "🏷️ Definitions",
        },
        {
            "<leader>tr",
            "<cmd>Telescope lsp_references<cr>",
            desc = "🔗 References",
        },
        {
            "<leader>tj",
            "<cmd>Gitsigns diffthis<cr>",
            desc = "⚖️ Gitsigns diffthis",
        },
        {
            "<leader>tt",
            "<cmd>TodoTelescope<cr>",
            desc = "✅ Search TODOs"
        },
        -- AutoSession bindings
        {
            "<leader>ax",
            "<cmd>AutoSession search<cr>",
            desc = "🔍 Session search",
        },
        {
            "<leader>as",
            "<cmd>AutoSession save<cr>",
            desc = "💾 Save session",
        },
        {
            "<leader>at",
            "<cmd>AutoSession toggle<cr>",
            desc = "🔄 Toggle autosave",
        },
        {
            "<leader>ad",
            "<cmd>AutoSession deletePicker<cr>",
            desc = "🗑️ Pick delete session",
        },
        -- Barbar bindings
        {
            "<leader>bd",
            "<cmd>BufferPickDelete<cr>",
            desc = "🗑️ Pick delete buffer",
        },
        {
            "<leader>bg",
            "<cmd>BufferPick<cr>",
            desc = "🎯 Pick buffer",
        },
        {
            "<leader>bc",
            "<cmd>BufferClose<cr>",
            desc = "❌ Close current buffer",
        },
        {
            "<leader>ba",
            "<cmd>BufferCloseAllButCurrent<cr>",
            desc = "🧹 Close all but current",
        },
        -- NvimTree bindings
        {
            "<leader>et",
            "<cmd>NvimTreeToggle<cr>",
            desc = "🗂️ NvimTree toggle",
        },
        {
            "<leader>ef",
            "<cmd>NvimTreeFocus<cr>",
            desc = "🎯 NvimTree focus",
        },
        {
            "<leader>er",
            "<cmd>NvimTreeRefresh<cr>",
            desc = "🔄 NvimTree refresh",
        },
        -- Terminal bindings
        {
            "<leader>c",
            "<cmd>split | term<cr>",
            desc = "🐚 Terminal",
        },
        -- DAP bindings
        {
            "<leader>dc",
            "<cmd>DapContinue<cr>",
            desc = "▶️ Continue",
        },
        {
            "<leader>dq",
            "<cmd>lua require('dapui').toggle()<cr>",
            desc = "👁️ Toggle DAP UI",
        },
        {
            "<leader>dn",
            "<cmd>DapNew<cr>",
            desc = "🆕 New",
        },
        {
            "<leader>dl",
            "<cmd>DapShowLog<cr>",
            desc = "📜 Show log",
        },
        {
            "<leader>dt",
            "<cmd>DapTerminate<cr>",
            desc = "✖️ Terminate",
        },
        {
            "<leader>db",
            "<cmd>DapToggleBreakpoint<cr>",
            desc = "🛑 Toggle breakpoint",
        },
        {
            "<leader>dx",
            "<cmd>DapClearBreakpoints<cr>",
            desc = "🧹 Clear breakpoints",
        },
        {
            "<leader>dd",
            "<cmd>DapDisconnect<cr>",
            desc = "🔌 Disconnect",
        },
        {
            "<leader>dp",
            "<cmd>DapPause<cr>",
            desc = "⏸️ Pause",
        },
    },
}
