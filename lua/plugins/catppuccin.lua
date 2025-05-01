-- https://github.com/catppuccin/nvim
return {
  "catppuccin/nvim",
  branch = "main",
  tag = "v1.9.0",
  config = function()
    require("catppuccin").setup({
      flavour = "auto",
      background = {
        light = "latte",
        dark = "mocha",
      },
      show_end_of_buffer = true,
      term_colors = true,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = { "bold" },
        functions = { "bold" },
        keywords = { "bold" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = { "bold" },
        properties = {},
        types = { "bold" },
        operators = {},
      },
      -- Defines the highlight groups for any other
      --  files that uses those highlight groups.
      -- This is for when I get tired of light or dark mode,
      --  so that when changed it I don't get to do a lot of work.
      custom_highlights = function(colors)
        return {
          -- NOTE: These are used in 'settings/statusline.lua'.
          SLFile = { fg = colors.text, bold = true },
          SLFlag = { fg = colors.red, bold = true },
          SLGitHead = { fg = colors.sky, bold = true },
          SLGitAdded = { fg = colors.green, bold = true },
          SLGitRemoved = { fg = colors.red, bold = true },
          SLGitChanged = { fg = colors.yellow, bold = true },
          SLPosition = { fg = colors.lavender, bold = true },
          -- NOTE: These are used in 'lua/plugins/todo-comments.lua'
          TCFix = { bg = colors.red },
          TCTodo = { bg = colors.green },
          TCHack = { bg = colors.peach },
          TCWarn = { bg = colors.yellow },
          TCPerf = { bg = colors.maroon },
          TCNote = { fg = colors.sky },
          TCText = { bg = colors.lavender },
        }
      end,
      default_integrations = false,
      integrations = {
        gitsigns = true,
        treesitter = true,
        markdown = true,
      }
    })
    -- NOTE: This need to be changed if you want dark mode. (:h background)
    vim.opt.background = "light"
    vim.cmd [[ colorscheme catppuccin ]]
  end,
}
