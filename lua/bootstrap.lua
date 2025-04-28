local M = {}

local plugins = require("plugins")

function M.bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"
  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/lewis6991/pckr.nvim",
      pckr_path
    })
  end
  vim.opt.rtp:prepend(pckr_path)

  local pckr = require("pckr")
  for _, plugin in ipairs(plugins) do
    pckr.add({ require(plugin) })
  end
end

return M
