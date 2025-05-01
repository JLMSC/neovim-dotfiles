-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  tag = "v0.9.3",
  run = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {"c", "lua", "markdown"},
      sync_install = true,
      auto_install = false,
      ignore_install = {"all"},
      highlight = {
        enable = true,
        additional_vim_regex_highlight = false,
      },
      incremental_selection = {
        enable = false,
      },
      indent = {
        enable = false,
      }
    })
  end
}
