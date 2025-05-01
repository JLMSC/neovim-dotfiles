-- https://github.com/iamcco/markdown-preview.nvim
return {
  "iamcco/markdown-preview.nvim",
  branch = "master",
  tag = "v0.0.10",
  config = function()
    vim.fn["mkdp#util#install"]()
  end
}
