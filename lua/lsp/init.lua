require("lsp.diagnostic")
require("lsp.completion")

-- NOTE: Gets every file name inside 'lsp/' and enables them.
--  You can check if they are activated with ':checkhealth vim.lsp'
local lsp_dir = vim.fn.stdpath("config") .. "/lsp"
local fd = vim.loop.fs_scandir(lsp_dir)
if fd then
  while true do
    local name = vim.loop.fs_scandir_next(fd)
    if not name then
      break
    end
    if name:sub(-4) == ".lua" and name ~= "init.lua" then
      local lsp_name = name:sub(1, -5)
      vim.lsp.enable(lsp_name)
    end
  end
end
