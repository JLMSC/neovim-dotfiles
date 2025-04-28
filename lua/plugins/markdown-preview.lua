-- https://github.com/iamcco/markdown-preview.nvim
return {
  "iamcco/markdown-preview.nvim",
  run = function()
    vim.fn["mkdp#util#install"]()
  end
}
