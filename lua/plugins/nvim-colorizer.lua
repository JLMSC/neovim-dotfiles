-- https://github.com/norcalli/nvim-colorizer.lua
return {
  "catgoose/nvim-colorizer.lua",
  branch = "master",
  run = function()
    require("colorizer").setup({
      filetypes = { "*" },
      user_commands = false,
      user_default_options = {
        names = false,
        names_custom = false,
        RGB = true,
        RGBA = true,
        RRGGBB = true,
        RRGGBBAA = true,
        AARRGGBB = true,
        rgb_fn = false,
        hsl_fun = false
      }
    })
  end
}
