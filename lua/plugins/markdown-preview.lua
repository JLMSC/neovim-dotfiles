-- https://github.com/iamcco/markdown-preview.nvim
return {
  -- Commands:
  -- :MarkdownPreview
  -- :MarkdownPreviewStop
  "iamcco/markdown-preview.nvim",
  branch = "master",
  tag = "v0.0.10",
  config = function()
    vim.fn["mkdp#util#install"]()
  end
}
