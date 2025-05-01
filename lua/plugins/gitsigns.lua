-- https://github.com/lewis6991/gitsigns.nvim
return {
  "lewis6991/gitsigns.nvim",
  branch = "main",
  tag = "v1.0.2",
  config = function()
    require("gitsigns").setup({
      signcolumn = true,
      numhl = true,
      linehl = false,
      word_diff = false,
      current_line_blame = false,
    })
  end
}
