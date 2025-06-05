-- https://github.com/nvim-tree/nvim-web-devicons
return {
  "nvim-tree/nvim-web-devicons",
  branch = "master",
  config = function()
    require("nvim-web-devicons").setup({
      color_icons = true,
      default = true,
      strict = true,
      variant = "light",
    })
  end,
}
