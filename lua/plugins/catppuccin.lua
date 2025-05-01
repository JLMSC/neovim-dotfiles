-- https://github.com/catppuccin/nvim
return {
  "catppuccin/nvim",
  branch = "main",
  tag = "v1.9.0",
  config = function()
    require("catppuccin").setup({
      flavour = "auto",
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
      }
    })
    vim.opt.background = "light"
    vim.cmd [[ colorscheme catppuccin-latte ]]
  end,
}
