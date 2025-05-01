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
  config = function()
    require("todo-comments").setup({
      signs = false,
      keywords = {
        FIX = {
          color = "#d20f39",
          alt = { "fix" }
        },
        TODO = {
          color = "#40a02b",
          alt = { "todo" }
        },
        HACK = {
          color = "#fe640b",
          alt = { "hack" }
        },
        WARN = {
          color = "#df8e1d",
          alt = { "warn" }
        },
        PERF = {
          color = "#e64553",
          alt = { "perf" }
        },
        NOTE = {
          color = "#04a5e5",
          alt = { "note" }
        },
        TEST = {
          color = "#7287fd",
          alt = { "test" }
        }
      },
      gui_style = {
        fg = "BOLD",
        bg = "NONE"
      },
      merge_keywords = true,
      highlight = {
        multiline = false,
        before = "fg",
        keyword = "bg",
        after = "bg",
        max_line_len = 79
      }
    })
  end
}
