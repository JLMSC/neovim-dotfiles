-- https://github.com/folke/todo-comments.nvim
return {
  -- FIX: This is a test.
  -- TODO: This is a test.
  -- HACK: This is a test.
  -- WARN: This is a test.
  -- PERF: This is a test.
  -- NOTE: This is a test.
  -- TEST: This is a test.
  "folke/todo-comments.nvim",
  branch = "main",
  tag = "v1.4.0",
  requires = {
    -- NOTE: Uses custom highlight groups, they are
    --  defined inside 'lua/plugins/catppuccin.lua'
    "catppuccin/nvim",
    -- NOTE: An option 'comments_only' uses nvim-treesitter.
    "nvim-treesitter/nvim-treesitter"
  },
  config = function()
    require("todo-comments").setup({
      signs = false,
      keywords = {
        FIX = { color = "fix", alt = { "fix" } },
        TODO = { color = "todo", alt = { "todo" } },
        HACK = { color = "hack", alt = { "hack" } },
        WARN = { color = "warn", alt = { "warn" } },
        PERF = { color = "perf", alt = { "perf" } },
        NOTE = { color = "note", alt = { "note" } },
        TEST = { color = "test", alt = { "test" } }
      },
      gui_style = {
        fg = "BOLD",
        bg = "BOLD"
      },
      merge_keywords = true,
      highlight = {
        multiline = true,
        before = "",
        keyword = "bg",
        after = "fg",
        -- NOTE: This uses treesitter.
        comments_only = true,
        max_line_len = 79
      },
      -- NOTE: These highlight groups are define
      --  in 'lua/plugins/catppuccin.lua' the right
      --  values are fallbacks, in case the highlight
      --  groups are not found. (Default values)
      colors = {
        fix = { "TCFix", "#DC2626" },
        todo = { "TCTodo", "#2563EB" },
        hack = { "TCHack", "#FBBF24" },
        warn = { "TCWarn", "#FBBF24" },
        perf = { "TCPerf", "#2563EB" },
        note = { "TCNote", "#10B981" },
        test = { "TCTest", "#FF00FF" }
      }
    })
  end
}
